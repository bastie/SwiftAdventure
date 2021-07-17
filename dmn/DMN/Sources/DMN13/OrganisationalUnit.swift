//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class OrganisationalUnit : BusinessContextElement {
    
    var decisionOwned : [Decision] = [];
    var decisionMade : [Decision] = [];
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
