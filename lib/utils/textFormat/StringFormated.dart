class StringFormated {
  String stringFormated(String string) {
    if (string.contains('-') != false) {
      var st = string.split('-');
      return st[0].substring(0, 1).toUpperCase() +
          st[0].substring(1) +
          ' ' +
          st[1];
    } else {
      return string.substring(0, 1).toUpperCase() + string.substring(1);
    }
  }
}
