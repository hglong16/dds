import "package:chap2/linked_list.dart";

void main() {
  final list = LinkedList<int>();

  list.push(3);
  list.push(2);
  list.push(1);

  for (final element in list) {
    print(element);
  }
}
