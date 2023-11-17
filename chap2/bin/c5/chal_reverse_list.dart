import "package:chap2/linked_list.dart";

void main() {
  final list = LinkedList<int>();

  list.push(6);
  list.push(5);
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);

  list.reverse();

  print(list);
}

extension Reversed<T> on LinkedList<T> {
  void reverse() {
    tail = head;

    var previous = head;
    var current = head?.next;
    previous?.next = null;
    var index = 0;

    while (current != null) {
      print("$index index - $this");
      final next = current.next;
      print(
          "$index index - current $current - previous $previous - next $next");
      current.next = previous;
      print(
          "$index index - current $current - previous $previous - next $next");
      previous = current;
      print(
          "$index index - current $current - previous $previous - next $next");
      current = next;
      print(
          "$index index - current $current - previous $previous - next $next");
      index++;
    }

    head = previous;
  }
}
