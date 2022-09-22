bool stringContainsUpperCase(String password) {
  return password.contains(RegExp(r'[A-Z]'));
}

bool stringContainsNumber(String password) {
  return password.contains(RegExp(r'[0-9]'));
}

bool passwordCharacterLength(String password) {
  return password.length >= 8;
}