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
