//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class PerformanceIndicator : BusinessContextElement {
    
    var impactedDecision : [Decision] = [];
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
