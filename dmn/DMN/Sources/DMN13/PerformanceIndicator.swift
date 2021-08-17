//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 PerformanceIndicator inherits all the attributes and model associations from BusinessContextElement.
 */
class PerformanceIndicator : BusinessContextElement {
    
    /**
     This attribute lists the instances of Decisions that impact this PerformanceIndicator
     */
    var impactedDecision : [Decision] = [];
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
