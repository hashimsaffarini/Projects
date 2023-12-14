 class Stack<E> {
  Stack() : stack = <E>[];
  final List<E> stack;
  void push(E element) => stack.add(element);

  E pop() => stack.removeLast();
  E get peek => stack.last;

  bool get isEmpty => stack.isEmpty;

  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '--- Top ---\n'
        '${stack.reversed.join('\n')}'
        '\n-----------';
  }
}
 bool isValid(String s) {
     if (s.length % 2 != 0) {
      return false;
    }
    Stack<String> stack = Stack();
    for (var char in s.runes) {
      String c = String.fromCharCode(char);
      if (c == '(' || c == '{' || c == '[') {
        stack.push(c);
      } else if (stack.isEmpty) {
        return false;
      } else if (c == ')' && stack.pop() != '(') {
        return false;
      } else if (c == ']' && stack.pop() != '[') {
        return false;
      } else if (c == '}' && stack.pop() != '{') {
        return false;
      }
    }
    return stack.isEmpty;
  }
  
  void main(List<String> args) {
  String s="([{}])";
  print(isValid(s));
}