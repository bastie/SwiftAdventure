//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class ItemDefinition : NamedElement {
    
    var item : [InformationItem] = [];
    var value : [Expression] = [];
    var dRGElement : DRGElement?; // TODO: really an Optional?
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
