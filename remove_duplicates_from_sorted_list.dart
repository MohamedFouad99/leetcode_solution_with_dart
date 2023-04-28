void main() {}

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? deleteDuplicates(ListNode? head) {
  if (head == null) return null;

  ListNode current = head;
  while (current.next != null) {
    if (current.val == current.next!.val) {
      current.next = current.next!.next;
    } else {
      current = current.next!;
    }
  }
  return head;
}
