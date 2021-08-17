//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 OrganisationalUnit inherits all the attributes and model associations from BusinessContextElement.
 */
class OrganisationalUnit : BusinessContextElement {
    
    /// This attribute lists the instances of Decision that are owned by this OrganisationalUnit.
    var decisionOwned : [Decision] = [];
    /**
     This attribute lists the instances of Decision that are made by this OrganisationalUnit.
     */
    var decisionMade : [Decision] = [];
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
