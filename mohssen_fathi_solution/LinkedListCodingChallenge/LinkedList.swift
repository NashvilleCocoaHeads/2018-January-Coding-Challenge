//
//  Protocol.swift
//  LinkedListCodingChallenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

public final class ListNode<T>: NodeType {
    
    public typealias Element = T
    
    public var element: T
    public var next: ListNode<T>?
    
    init(element: T) {
        self.element = element
    }
}

public final class LinkedList<T>: LinkedListType {
    
    public typealias Node = ListNode<T>
    
    public var head: ListNode<T>?
    
    public func prepend(_ element: LinkedList<T>.Element) {
        let node = Node(element: element)
        if head == nil {
            head = node
            tail = node
        } else {
            node.next = head
            head = node
        }
    }
    
    public func append(_ element: LinkedList<T>.Element) {
        let node = Node(element: element)
        if head == nil {
            head = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }
    }
    
    fileprivate var current: Node?
    fileprivate var tail: Node?
}
