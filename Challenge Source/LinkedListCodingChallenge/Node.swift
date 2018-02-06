//
//  Node.swift
//  LinkedListCodingChallenge
//
//  Created by Chris Martin on 2/5/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

public final class Node<Element>: NodeType {
    
    public var element: Element
    public var next: Node<Element>?
    public var previous: Node<Element>?
    
    /// Initializes the node with an element.
    ///
    /// - Parameter element: Element contained within the node.
    public init(element: Element) {
        
        self.element = element
        next = self
        previous = self
    }
    
    /// Modifies node metadata to insert this node before another node.
    ///
    /// - Parameter nextNode: The intended next node in the sequence
    public func insert(before nextNode: Node?) {
        
        let nextNode = nextNode ?? self
        
        next = nextNode
        nextNode.previous = self
    }
    
    /// Modifies node metadata to insert this node before another node.
    ///
    /// - Parameter previousNode: The intended previous node in the sequence
    public func insert(after previousNode: Node?) {
        
        let previousNode = previousNode ?? self
        
        previous = previousNode
        previousNode.next = self
    }
}

extension Node {
    
    /// Initialized a node with an element and inserts it between two nodes.
    ///
    /// - Parameters:
    ///   - element: Element contained within the node
    ///   - previousNode: The intended previous node in the sequence
    ///   - nextNode: The intended next node in the sequence
    public convenience init(element: Element, between previousNode: Node?, and nextNode: Node?) {
        
        self.init(element: element)
        
        insert(after: previousNode)
        insert(before: nextNode)
    }
}
