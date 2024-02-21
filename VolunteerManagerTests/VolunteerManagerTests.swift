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
 
}
