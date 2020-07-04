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
  
  var midNode: LinkedListNode<T>? {
    var slow = start
    var fast = start
    while fast != nil && fast?.next != nil {
      slow = slow?.next
      fast = fast?.next?.next
    }
    return slow
  }
  
  func printNodes() {
    var current = start
    while let node = current {
      print(node.value, separator: "", terminator: " ")
      current = node.next
    }
  }
}

// challenge 43
var list = LinkedList<String>()
var previousNode: LinkedListNode<String>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz" { // "1, 2, 3, 4, 5"
  let node = LinkedListNode(value: String(letter))
  if let p = previousNode {
    p.next = node
  } else {
    list.start = node
  }
  previousNode = node
}

// list.printNodes()

list.midNode
