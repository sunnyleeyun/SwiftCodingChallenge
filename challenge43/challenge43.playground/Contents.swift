import UIKit

class LinkedListNode<T> {
  var value: T
  var next: LinkedListNode?
  
  init(value: T) {
    self.value = value
  }
}

class LinkedList<T> {
  var start: LinkedListNode<T>?
  
  func printNodes() {
    var current = start
    while let node = current {
      print(node.value, separator: "", terminator: " ")
      current = node.next
    }
  }
}

var list = LinkedList<String>()
var previousNode: LinkedListNode<String>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz" {
  let node = LinkedListNode(value: String(letter))
  if let p = previousNode {
    p.next = node
  } else {
    list.start = node
  }
  previousNode = node
}

list.printNodes()
