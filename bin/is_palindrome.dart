void main() {
  print(isPalindrome(-121));
}

bool isPalindrome(int x) {
  String num = x.toString();
  String reversedNumber = "";

  for (int i = num.length - 1; i >= 0; i--) {
    reversedNumber += num[i];
  }

  if (reversedNumber == num) {
    return true;
  } else {
    return false;
  }
}
