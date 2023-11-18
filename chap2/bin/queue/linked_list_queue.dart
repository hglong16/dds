import "package:chap2/queue/queue.dart";

void main() {
  final queue = QueueLinkedList<String>();

  queue.enqueue("Bryan");
  queue.enqueue("David");
  queue.enqueue("Mark");

  print(queue);

  print(queue.dequeue());

  print(queue);
}
