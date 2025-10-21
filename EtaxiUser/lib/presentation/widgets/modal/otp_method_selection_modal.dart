import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/presentation/blocs/login/login_bloc.dart';
import 'package:etaxi_user/presentation/blocs/login/login_event.dart';
import 'package:etaxi_user/presentation/blocs/login/login_state.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';

class OtpMethodSelectionModal extends StatelessWidget {
  final VoidCallback? onCancel;
  final VoidCallback? onSendOtp;
  final ValueChanged<OtpMethod>? onMethodSelected;

  const OtpMethodSelectionModal({
    super.key,
    this.onCancel,
    this.onSendOtp,
    this.onMethodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => 
          previous.selectedOtpMethod != current.selectedOtpMethod ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              _buildHandle(),
              const SizedBox(height: 24),
              _buildTitle(),
              const SizedBox(height: 16),
              _buildDescription(),
              const SizedBox(height: 32),
              _buildOtpMethodList(state),
              const SizedBox(height: 32),
              _buildActionButtons(context, state),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHandle() {
    return Container(
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Chọn ứng dụng để nhận mã OTP',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColorConstants.black,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Xanh SM sẽ gửi cho bạn mã xác thực OTP để đăng ký/đăng nhập.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Chọn ứng dụng mà bạn muốn sử dụng để nhận OTP.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildOtpMethodList(LoginState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          _buildOtpMethodItem(
            icon: _buildZaloIcon(),
            title: 'Zalo',
            isSelected: state.selectedOtpMethod == OtpMethod.zalo,
            onTap: () => onMethodSelected?.call(OtpMethod.zalo),
          ),
          const SizedBox(height: 16),
          _buildOtpMethodItem(
            icon: _buildSmsIcon(),
            title: 'Tin nhắn điện thoại',
            isSelected: state.selectedOtpMethod == OtpMethod.sms,
            onTap: () => onMethodSelected?.call(OtpMethod.sms),
          ),
        ],
      ),
    );
  }

  Widget _buildOtpMethodItem({
    required Widget icon,
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? AppColorConstants.primary.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColorConstants.primary : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? AppColorConstants.primary : AppColorConstants.black,
                ),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppColorConstants.primary : Colors.transparent,
                border: Border.all(
                  color: isSelected ? AppColorConstants.primary : Colors.grey.shade400,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 12,
                      color: Colors.white,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildZaloIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFF0068FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          'Z',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildSmsIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        Icons.message,
        color: Colors.grey.shade600,
        size: 20,
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, LoginState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: onCancel,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Huỷ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: AppButton(
              onPressed: state.isLoading ? () {} : onSendOtp ?? () {},
              text: state.isLoading ? 'Đang gửi...' : 'Gửi mã OTP',
            ),
          ),
        ],
      ),
    );
  }
}
