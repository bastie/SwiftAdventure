//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class NamedElement: DMNElement {
    var name : String;
    
    /**
     - THROWS: NSException.invalidArgumentException if name is empty
     */
    init(newName: String) throws {
        guard newName.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            throw NSException(name: .invalidArgumentException, reason: "Name is empty") as! Error
        }
        self.name = newName;
    }
}
