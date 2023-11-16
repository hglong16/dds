class Node<T> {
  ///
  /// A node in a linked list.
  /// [value] is the data stored in the node.
  /// [next] is a pointer to the next node in the list.
  /// If [next] is null, then this is the last node in the list.
  /// [T] is the type of the [value] stored in the node.
  /// [next] is a pointer to the next node in the list.
  /// If [next] is null, then this is the last node in the list.
  ///
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  /// Returns a string representation of this node and
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }

    return value;
  }

  E? removeLast() {
    if (head?.next == null) return pop();

    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }

    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
