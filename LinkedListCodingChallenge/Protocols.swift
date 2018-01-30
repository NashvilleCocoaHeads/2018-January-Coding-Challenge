//
//  Protocols.swift
//  January2018Coding-Challenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

public protocol NodeType {
    
    associatedtype Element
    
    var element: Element { get }
    
    var next: Self? { get set }
}

public protocol LinkedListType: Sequence {
    
    associatedtype Node: NodeType where Node.Element == Element
    
    var head: Node? { get }
    
    mutating func append(_ element: Element)
}
