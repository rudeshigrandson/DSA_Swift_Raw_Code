//
//  LinkedList.swift
//  
//
//  Created by Saavaj Studios on 26/02/25.
//
import Foundation

public struct  LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil
    }
    
    public func node(at index: Int) -> Node<Value>? {
        var currentNode: Node<Value>? = head
        for _ in 0..<index {
            guard let nextNode = currentNode?.next else {
                return nil
            }
            currentNode = nextNode
        }
        return currentNode
    }
    
    public mutating func push(_ value: Value) {
        let newNode = Node<Value>(value: value)
        newNode.next = head
        head = newNode
        if tail == nil {
            tail = newNode
        }
    }
    
    public mutating func append(_ value: Value) {
        let newNode = Node<Value>(value: value)
        if isEmpty {
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }
    }
        
    public mutating func insert(_ value: Value, after node: Node<Value>) {
        let newNode = Node<Value>(value: value)
        newNode.next = node.next
        node.next = newNode
    }
    
    public mutating func pop() -> Value? {
        guard !isEmpty else {
            return nil
        }
        let valueToPop = removeFirst()
        return valueToPop
    }
    
    public mutating func removeLast() -> Value {
        guard let currentTail = tail else {
            fatalError("Cannot remove from an empty list")
        }
        
        if currentTail === head {
            head = nil
        } else {
            var current: Node<Value>? = head
        }
        
        return currentTail.value
    }
    
    public mutating func removeFirst() -> Value {
        guard let currentHead = head else {
            fatalError("Cannot remove from an empty list")
        }
        
        if currentHead === tail {
            tail = nil
        }
        
        head = currentHead.next
        
        return currentHead.value
    }
    
    public mutating func remove(after node : Node<Value>) -> Value {
        if node.next === tail {
            tail = node
        }
        node.next = node.next?.next
        
        return node.next!.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var result: [Value] = []
        var current = head
        while let node = current {
            result.append(node.value)
            current = node.next
        }
        return result.description
    }
}
