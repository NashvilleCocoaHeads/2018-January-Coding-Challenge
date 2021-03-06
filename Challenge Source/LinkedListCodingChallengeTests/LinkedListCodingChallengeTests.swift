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
        XCTAssertEqual(linkedList.head!.element, "hello")
        linkedList.append("world")
        
        let arrayValue = Array(linkedList)
        XCTAssertEqual(arrayValue, ["hello", "world"]) //Sequences can be converted back to an array (assuming it's not infinite!)
    }
    
    func testPrepend() {
        
        linkedList.prepend("first")
        linkedList.prepend("second")
        let arrayValue = Array(linkedList)
        XCTAssertEqual(arrayValue, ["second", "first"])
    }
    
    // We get access to extension methods on Sequence, like joined() and contains() below
    // We don't need to test these, because they are implemented by the standard library
    // This is just to show they are accessible and behave as expected
    func testJoined() {
        
        linkedList.append("hello")
        linkedList.append(", ")
        linkedList.append("world")
        linkedList.append("!")
        XCTAssertEqual(linkedList.joined(), "hello, world!")
    }
    
    func testContains() {
        
        linkedList.append("1")
        linkedList.append("2")
        linkedList.append("3")
        XCTAssert(linkedList.contains("2"))
    }
    
    //Uncomment to run performance tests
    func testAppendPerformance() {

        let strings = (1...10000).map(String.init)

        measure {

            for string in strings {

                linkedList.append(string)
            }
        }
    }

    func testPrependPerformance() {

        let strings = (1...10000).map(String.init)

        measure {

            for string in strings {

                linkedList.prepend(string)
            }
        }
    }
}
