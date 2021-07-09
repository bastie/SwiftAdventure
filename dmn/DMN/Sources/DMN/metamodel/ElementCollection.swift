//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 The ElementCollection class is used to define named groups of DRGElement instances.
 
 ElementCollections may be used for any purpose relevant to an implementation, for example:
 
 * To identify the requirements subgraph of a set one or more decisions (i.e., all the elements in the closure of the requirements of the set).
 * To identify the elements to be depicted on a DRD.
 
 ElementCollection is a kind of NamedElement, from which an instance of ElementCollection inherits the name and optional id, description and label attributes, which are Strings. The id of an ElementCollection element SHALL be unique within the containing instance of Definitions.
 
 An ElementCollection element has any number of associated drgElements, which are the instances of DRGElement that this ElementCollection defines together as a group. Notice that an ElementCollection element must reference the instances of DRGElement that it collects, not contain them: instances of DRGElement can only be contained in Definitions elements.
 
 ElementCollection inherits all the attributes and model associations from NamedElement.
 */
class ElementCollection : NamedElement {

  /**
   This attribute lists the instances of DRGElement that this ElementCollection groups.
   */
  var drgElement : [DRGElement]?;

  override init(newName: String) throws {
      try super.init(newName:newName);
  }
}
