import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/presentation/blocs/login/login_bloc.dart';
import 'package:etaxi_user/presentation/blocs/login/login_event.dart';
import 'package:etaxi_user/presentation/blocs/login/login_state.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:etaxi_user/presentation/widgets/input/phone_input_field.dart';
import 'package:etaxi_user/presentation/widgets/modal/otp_method_selection_modal.dart';
import 'package:etaxi_user/core/constants/app_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc _bloc;
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = LoginBloc();
    _phoneController.addListener(_onPhoneChanged);
  }

  @override
  void dispose() {
    _phoneController.removeListener(_onPhoneChanged);
    _phoneController.dispose();
    _bloc.close();
    super.dispose();
  }

  void _onPhoneChanged() {
    _bloc.add(LoginEvent.phoneNumberChanged(_phoneController.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 24), child: _buildPhoneInput()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFF7FFFD4), Color(0XFFE0FFFF)]),
      ),
      child: Column(children: [_buildSelectLanguageButton(), _buildTitle()]),
    );
  }

  Widget _buildSelectLanguageButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(top: 30, right: 24),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.vietnamFlag, width: 20, height: 15),
            const SizedBox(width: 8),
            const Text(
              'Tiếng Việt',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColorConstants.primary),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.keyboard_arrow_down, size: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: const Text(
          'Khởi đầu cùng Xanh!',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColorConstants.primary),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildPhoneInput() {
    return Row(
      children: [
        Row(
          children: [
            Image.asset(AppImages.vietnamFlag, width: 20, height: 15),
            const SizedBox(width: 8),
            Text(
              '+84',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColorConstants.primary),
            ),
            const SizedBox(width: 4),
            Icon(Icons.keyboard_arrow_down, size: 16, color: Colors.grey.shade400),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: TextFormField(
            controller: _phoneController,
            onChanged: (value) => _bloc.add(LoginEvent.phoneNumberChanged(value)),
            decoration: InputDecoration(
              hintText: 'Số điện thoại',
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
