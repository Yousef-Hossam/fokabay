String? validateLogin(String value, String msg) {
  if (value.isEmpty || value == null) {
    return msg;
  }
  return null;
}
