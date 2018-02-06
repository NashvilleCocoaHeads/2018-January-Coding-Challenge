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
    
    public init(element: Element) {
        
        self.element = element
    }
}

extension Node {
    
    public convenience init(element: Element, before nextNode: Node?) {
        
        self.init(element: element)
        next = nextNode
    }
    
    public convenience init(element: Element, after previousNode: Node?) {
        
        self.init(element: element)
        previousNode?.next = self
    }
}
