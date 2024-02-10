void main() {
  print(reverseWords("Let's take LeetCode contest"));
}
// https://leetcode.com/problems/reverse-words-in-a-string-iii
// 557. Reverse Words in a String III

String reverseWords(String s) {
  return s.split(' ').map((e) => e.split('').reversed.join()).join(' ');
}
