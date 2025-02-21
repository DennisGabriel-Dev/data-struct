from node import Node
class LinkedList:
  def __init__(self):
    self.head = None
    self.tail = None
  
  def add(self, value):
    node = Node(value)
    if self.head is None:
      self.head = node
      self.tail = node
    else:
      self.tail.next = node
      self.tail = node

  def add_first(self, value):
    node = Node(value)
    if self.head is None:
      self.head = node
      self.tail = node
    else:
      node.next = self.head
      self.head = node

  def remove_first(self):
    if self.head is None:
      return None
    else:
      value = self.head.value
      self.head = self.head.next
      return value

  def remove_final(self):
    if self.head is None:
      return None
    else:
      value = self.tail.value
      current = self.head
      while current.next is not None and current.next != self.tail:
        current = current.next
      current.next = None
      self.tail = current
      return value	