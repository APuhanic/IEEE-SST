// Extension on String to remove first slash

extension RemoveFirstSlash on String {
  String removeFirstSlash() {
    if (startsWith('/')) {
      return substring(1);
    }
    return this;
  }
}
