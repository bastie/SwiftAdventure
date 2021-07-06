//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class Group : Artifact {
    
    var name : String?; // optional in result of DMN spec, v1.3 site 33 (subtype Group)
    
    init(newName: String?) {
        name = newName
    }
}
