//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class ElementCollection : NamedElement {
    var drgElement : [DRGElement]?;

    override init(newName: String) throws {
        try super.init(newName:newName);
    }    
}
