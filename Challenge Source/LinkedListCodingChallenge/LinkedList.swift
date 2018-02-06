//
//  Protocol.swift
//  LinkedListCodingChallenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

public struct LinkedList<Element>: LinkedListType {
    
    public var head: Node<Element>?
    public var underestimatedCount: Int = 0
    
    private var lastNode: Node<Element>? {
        
        var node = head
        while let next = node?.next {
            node = next
        }
        
        return node
    }
    
    public mutating func prepend(_ element: LinkedList<Element>.Element) {
        
        let node = Node(element: element, before: head)
        head = node
        
        underestimatedCount += 1
    }
    
    public mutating func append(_ element: LinkedList<Element>.Element) {
        
        let node = Node(element: element, after: lastNode)
        
        if lastNode == nil {
            head = node
        }
        
        underestimatedCount += 1
    }
}

extension LinkedList {
    
    public struct Iterator: IteratorProtocol {
        
        public var currentNode: Node<Element>?
        
        public mutating func next() -> Element? {
            
            let value = currentNode?.element
            currentNode = currentNode?.next
            
            return value
        }
    }
    
    public func makeIterator() -> Iterator {
        
        return Iterator(currentNode: head)
    }
}
