//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 03.07.21.
//

import Foundation

/**
 DMNElement is the abstract superclass for the decision model elements. It provides the optional attributes id, description and label, which are Strings which other elements will inherit.
 The id of a DMNElement is further restricted to the syntax of an [XML ID] (http://www.w3.org/TR/2004/REC-xmlschema-2-20041028/datatypes.html#ID), and SHALL be unique within the decision model.
 
 This class is abstract.
 
 DMNElement has abstract specializations `NamedElement` and Expression NamedElement adds the required attribute name, and includes the abstract specializations `BusinessContextElement` and `DRGElement`, as well as concrete specializations `Definitions`, `ItemDefinition`, `InformationItem`, `ElementCollection` and `DecisionService`.
 
 
 - Authors: Sͬeͥbͭaͭsͤtͬian
 - Copyright: (c) 2021 Sͬeͥbͭaͭsͤtͬian
 - Version: 0.1.0
 
 - TODO:
 */
class DMNElement {
  /// Optional identifier for this element. SHALL be unique within its containing Definitions element.
  var id : NSObject?;
  /// A description of this element.
  var description : String?;
  /**
   An alternative short description of this element. It should primarily be used on elements that do not have a name attribute, e.g., an Input Expression. Similar to the description attribute, it has no notation defined and is neither related to the DMNLabel element that is used in Diagram Interchange nor to the outputLabel attribute of a Decision Table.
   */
  var label : String?;
  
  /**
   This attribute is used to attach named extended attributes and model associations. This association is not applicable when the XML schema interchange is used, since the XSD mechanism for supporting "anyAttribute" from other namespaces already satisfies this requirement.
   */
  var extensionAttrutes:[ExtensionAttribute] = [];
  /// This attribute is used as a container to attach additional elements to any DMN Element.
  var extensionElements:[ExtensionElements] = [];
    
}
