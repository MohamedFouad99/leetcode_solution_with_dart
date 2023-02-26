void main() {
  print(lengthOfLastWord("   fly me   to   the moon  "));
}

int lengthOfLastWord(String s) {
  return s.trim().split(' ').last.length;
  // int res = 0;

  // for (int i = s.length - 1; i >= 0; i--) {
  //   if (s[i] != " ") {
  //     res++;
  //   } else if (res != 0) {
  //     break;
  //   }
  // }
  // return res;
}
