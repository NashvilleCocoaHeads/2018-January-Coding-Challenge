//
//  Protocol.swift
//  LinkedListCodingChallenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

public struct LinkedList<Element>: LinkedListType {
    
    // MARK: - Properties
    
    public var head: Node<Element>?
    
    public var underestimatedCount: Int = 0
    
    /// The last node in the sequenece.
    private var lastNode: Node<Element>? {
        
        return head?.previous
    }
    
    // MARK: - Actions
    
    public mutating func prepend(_ element: LinkedList<Element>.Element) {
        
        let node = Node(element: element, between: lastNode, and: head)
        head = node
        
        underestimatedCount += 1
    }
    
    public mutating func append(_ element: LinkedList<Element>.Element) {
        
        let node = Node(element: element, between: lastNode, and: head)
        
        if lastNode == nil {
            head = node
        }
        
        underestimatedCount += 1
    }
}

// MARK: - Helper
extension LinkedList {
    
    public struct Iterator: IteratorProtocol {
        
        public var currentNode: Node<Element>?
        public var count: Int
        private var index: Int = 0
        
        init(firstNode: Node<Element>?, underestimatedCount: Int) {
            
            currentNode = firstNode
            count = underestimatedCount
        }
        
        public mutating func next() -> Element? {
            
            defer { incrementCurrentNode() }
            
            guard index < count else { return nil }

            return currentNode?.element
        }
        
        private mutating func incrementCurrentNode() {
            
            currentNode = currentNode?.next
            index += 1
        }
    }
    
    public func makeIterator() -> Iterator {
        
        return Iterator(
            firstNode: head,
            underestimatedCount: underestimatedCount
        )
    }
}
