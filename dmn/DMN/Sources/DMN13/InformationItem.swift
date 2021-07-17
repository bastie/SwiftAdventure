//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class InformationItem : NamedElement {
    
    var inputData : InputData?;
    var decisionOutput : Decision?;
    
    var dRGElement : DRGElement?; // TODO: really a Optional?
    
    var type : ItemDefinition?;
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
