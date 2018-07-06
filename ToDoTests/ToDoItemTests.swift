//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Cast Group on 28/06/2018.
//  Copyright © 2018 br.hoffsilva. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func teste_Init_TakesTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertNotNil(item,"Item should no be nil!")
    }
    
    func teste_Init_TakesTitleAndDescription() {
        _ = ToDoItem(title: "Foo", itemDescription: "Bar")
    }
    
    func test_Init_WhenGivenTitle_SetsTitle() {
        let item = ToDoItem(title: "Foo", itemDescription: "Bar")
        XCTAssertEqual(item.itemDescription, "Bar", "Should set title")
    }
    
    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "", timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func test_Init_WhenGivenLocation() {
        let location = Location(name: "Foo")
    }
    
    func test_Init_SetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "", location: location)
        XCTAssertEqual(item.location?.name, location.name, "should set location")
    }
    
    func test_EqualsItems_AreEquals() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Foo")
        XCTAssertEqual(first, second)
    }
    
    func test_Items_WhenLocationsDiffers_AreNotEqual() {
        let fc = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        let sc = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        let first = Location(name: "Foo", coordinate: fc)
        let second = Location(name: "Foo", coordinate: sc)
        XCTAssertEqual(first, second)
    }
    
    func test_Locations_WhenLongitudeDiffers_AreNotEqual() {
        let fc = CLLocationCoordinate2D(latitude: 0.0, longitude: 1.0)
        let sc = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        let first = Location(name: "Foo", coordinate: fc)
        let second = Location(name: "Foo", coordinate: sc)
        XCTAssertNotEqual(first, second)
    }
}
