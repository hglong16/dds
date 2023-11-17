import "package:chap2/linked_list.dart";

void main() {
  final list = LinkedList<int>();

  list.push(6);
  list.push(5);
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);

  var fast = list.head;
  var slow = list.head;

  while (fast?.next?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }

  print(slow!.value);
}
