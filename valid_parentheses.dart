void main() {
  print(isValid("{[]}"));
}

class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  E get top => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
}

bool isValid(String s) {
  final stack = Stack<String>();
  for (int i = 0; i < s.length; i++) {
    if (s.length == 1) {
      return false;
    } else if (s[i] == '{' || s[i] == '(' || s[i] == '[') {
      stack.push(s[i]);
    } else {
      if (stack.isEmpty) {
        return false;
      } else {
        String lastChar = stack.top;
        stack.pop();
        if (s[i] == '}' && lastChar != '{') {
          return false;
        } else if (s[i] == ')' && lastChar != '(') {
          return false;
        } else if (s[i] == ']' && lastChar != '[') {
          return false;
        }
      }
    }
  }
  if (stack.isEmpty) {
    return true;
  } else {
    return false;
  }
}
