import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:etaxi_user/core/constants/app_colors.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final bool enabled;

  const PhoneInputField({super.key, required this.controller, this.onChanged, this.hintText, this.enabled = true});

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          _buildCountryCode(),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: widget.controller,
              onChanged: widget.onChanged,
              enabled: widget.enabled,
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)],
              decoration: InputDecoration(
                hintText: widget.hintText ?? 'Số điện thoại',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          if (widget.controller.text.isNotEmpty)
            IconButton(
              onPressed: () {
                widget.controller.clear();
                widget.onChanged?.call('');
              },
              icon: Icon(Icons.clear, color: Colors.grey.shade400, size: 20),
            ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget _buildCountryCode() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 15,
          decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(2)),
          child: const Center(
            child: Text('★', style: TextStyle(color: Colors.white, fontSize: 10)),
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          '+84',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColorConstants.primary),
        ),
        const SizedBox(width: 4),
        Icon(Icons.keyboard_arrow_down, size: 16, color: Colors.grey.shade400),
      ],
    );
  }
}
