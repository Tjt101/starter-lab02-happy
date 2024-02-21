//
//  VolunteerManagerTests.swift
//  VolunteerManagerTests
//
//

import XCTest
@testable import VolunteerManager

class VolunteerManagerTests: XCTestCase {

    // Sample unit test
    func testAddValidNewVolunteer() {
        // Create Volunteer manager and add a volunteer with valid hours
        var manager = VolunteerManager()
        manager.volunteer("John", for: 5)
        
        // Successfully adding a volunteer should change the volunteers dictionary.
        // Therefore we check whether we can find John with 5 hours assigned.
        XCTAssertEqual(manager.volunteers["John"], 5)
    }
    
    // TODO: Create your unit tests below
    func testLess0Hours(){
        var manager = VolunteerManager()
        manager.volunteer("Uy", for: -5)
        // Successfully adding a volunteer should change the volunteers dictionary.
        // Therefore we check whether we can find Uy with 7 hours assigned.
        XCTAssertNil(manager.volunteers["Uy"])
    }
    
    
    func testAddHours(){
        var manager = VolunteerManager()
        manager.volunteer("Uy", for: 4)
        manager.volunteer("Uy", for: 3)
        // Successfully adding a volunteer should change the volunteers dictionary.
        // Therefore we check whether we can find Uy with 7 hours assigned.
        XCTAssertEqual(manager.volunteers["Uy"], 7)
    }
    
    func testAddOverHours(){
        var manager = VolunteerManager()
        manager.volunteer("Tommy", for: 15)
        manager.volunteer("Tommy", for: 10)
        // Successfully adding a volunteer should change the volunteers dictionary.
        // Therefore we check whether we can find John with 5 hours assigned.
        XCTAssertEqual(manager.volunteers["Tommy"], 20)
    }
}
