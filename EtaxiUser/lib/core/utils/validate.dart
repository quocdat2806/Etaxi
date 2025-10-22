class ValidateUtils {
  ValidateUtils._();

  static bool isValidVietnamesePhoneNumber(String phoneNumber) {
    final cleaned = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    if (cleaned.isEmpty) return false;

    if (!cleaned.startsWith('0')) return false;

    return cleaned.length == 10 || cleaned.length == 11;
  }
}
