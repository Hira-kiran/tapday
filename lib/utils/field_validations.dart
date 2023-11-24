class FieldValidator {
  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Please enter your email";
    }
    if (!RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(value)) {
      return "Please enter correct email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Please enter your password";
    }
    if (value.length < 6) {
      return "Password limit";
    }
    if (!RegExp(r"^(?=.*?[a-zA-Z])").hasMatch(value)) {
      return "Password should include 1 alphabet";
    }
    if (!RegExp(r"^(?=.*?[0-9])").hasMatch(value)) {
      return "Password should include 1 number";
    }
    if (!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(value.trim())) {
      return "Password should inculde 1 special charater";
    }
    return null;
  }
}
