//
//  Protocol.swift
//  LinkedListCodingChallenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

public final class LinkedList<T>: LinkedListType, Sequence {

    public typealias Element = T
    public typealias Node = LinkedNode<T>
    public var head: LinkedNode<T>?
    public var tail: LinkedNode<T>?
    
    public func prepend(_ element: LinkedList<T>.Element) {
        guard head != nil else {
            self.head = LinkedNode.init(element: element, next: nil)
            self.tail = self.head
            return
        }
        let newNode = LinkedNode.init(element: element, next: head)
        head = newNode
    }
    
    public func append(_ element: LinkedList<T>.Element) {
        let newNode = LinkedNode.init(element: element, next: nil)
        guard head != nil else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail?.next = newNode
        tail = newNode
    }
}

extension LinkedListType {

    public func makeIterator() -> AnyIterator<Element> {
        
        var currentNode: Node?
        
        return AnyIterator{
            if let node = currentNode {
                defer { currentNode = currentNode?.next }
                return currentNode?.next?.element
            }
            currentNode = self.head
            return self.head?.element
        }
    }
}

public final class LinkedNode<T>: NodeType {
    
    public typealias Element = T
    public var element: T
    public var next: LinkedNode<T>?
    
    init(element: T, next: LinkedNode<T>?) {
        self.element = element
        self.next = next
    }
}
