//
//  VolunteerManager.swift
//  VolunteerManager
//
//

import Foundation

// TODO: Fix the code based on the results of the unit test

struct VolunteerManager {
    /// private(set) indicates the variable can only be changed within the class
    private(set) var volunteers: [String:Int] = [:]
    
    mutating func volunteer(_ name: String, for hours: Int) {
        if hours>0{
            if let volunteerHours = volunteers[name] {
                volunteers[name] = volunteerHours + hours
            } else {
                volunteers[name] = hours
            }
            if let volunteerHours = volunteers[name], volunteerHours > 20 {
                volunteers[name] = 20
            }
        }

    }
        
}
