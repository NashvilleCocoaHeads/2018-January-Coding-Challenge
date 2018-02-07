//
//  Protocols.swift
//  LinkedListCodingChallenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

public protocol NodeType {
    
    /// The type of value being stored
    associatedtype Element
    
    /// The value being stored by the node
    var element: Element { get }
    
    /// A reference to the proceeding node in the list
    var next: Self? { get set }
}

public protocol LinkedListType: Sequence {
    
    /// A type implementing NodeType whose Element is the same as the LinkListType.Element
    associatedtype Node: NodeType where Node.Element == Element
    
    /// The first node in the sequence
    var head: Node? { get }
    
    /// Adds an element to the front of the sequence
    mutating func prepend(_ element: Element)
    
    /// Adds an element to the end of the sequence
    mutating func append(_ element: Element)
}


extension LinkedListType {
    
    public typealias Iterator = LinkedListIterator<Node>
    public func makeIterator() -> LinkedListIterator<Node> {
        return LinkedListIterator(start: head)
    }
}

// MARK: Iterator
public struct LinkedListIterator<E: NodeType>: IteratorProtocol {
    
    public typealias Element = E.Element
    var start: E?
    var current: E?
    
    init(start: E?) {
        self.start = start
    }
    
    public mutating func next() -> E.Element? {
        if current == nil {
            current = start
            return current?.element
        }
        current = current?.next
        return current?.element
    }
}
