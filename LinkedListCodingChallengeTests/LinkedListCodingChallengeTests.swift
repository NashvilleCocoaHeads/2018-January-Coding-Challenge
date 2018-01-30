//
//  LinkedListCodingChallengeTests.swift
//  LinkedListCodingChallengeTests
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import XCTest
@testable import LinkedListCodingChallenge

class LinkedListCodingChallengeTests: XCTestCase {
    
    var linkedList: LinkedList<String>!
    
    override func setUp() {
        super.setUp()
        linkedList = LinkedList<String>()
    }
    
    func testStartsEmpty() {
        
        XCTAssertNil(linkedList.head)
        XCTAssertNil(linkedList.first(where: { _ in true }))
    }
    
    func testAppend() {
        
        linkedList.append("hello")
        linkedList.append("world")
        XCTAssertNotNil(linkedList.head)
        XCTAssertEqual(Array(linkedList), ["hello", "world"]) //Sequences can be converted back to an array (assuming it's not infinite!)
    }
    
    func testJoined() {
        
        linkedList.append("hello")
        linkedList.append(", ")
        linkedList.append("world")
        linkedList.append("!")
        XCTAssertEqual(linkedList.joined(), "hello, world!") //We get access to extension methods on Sequence, like joined()
    }
    
    func testContains() {
        
        linkedList.append("1")
        linkedList.append("2")
        linkedList.append("3")
        XCTAssert(linkedList.contains("2"))
    }
    
}
