import "package:chap2/linked_list.dart";

void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);
  var middleNode = list.nodeAt(0);
  list.removeAfter(middleNode!);
  print(list);
}
