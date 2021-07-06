//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class Definitions : NamedElement {
  
  var namespace : URL; // https://developer.apple.com/documentation/foundation/url
  var expressionLanguage : URL?;
  var typeLanguage : URL?;
  var exporter : String?;
  var exporterVersion : String?;

  var businessContextElement : [BusinessContextElement] = [];
  var itemDefinition : [ItemDefinition] = [];
  var import_ : [Import] = []; // add _ after import to be compatble with Swift
  var elementCollection : [ElementCollection] = [];
  var drgElement : [DRGElement] = [];
  var dmnDI : DMNDI?;
  var artifact:[Artifact] = [];
  
  init(newName: String, newNamespace : URL) throws {
    self.namespace = newNamespace;
    try super.init(newName:newName);
  }
}
