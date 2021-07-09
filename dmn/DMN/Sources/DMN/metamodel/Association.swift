//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 An Association is used to link information and Artifacts with DMN graphical elements. Text Annotations and other Artifacts can be associated with the graphical elements. An arrowhead on the Association indicates a direction of flow (e.g., data), when appropriate.
 
 The Association element inherits the attributes and model associations of DMNElement
 */
class Association : Artifact {
  /**
   associationDirection is an attribute that defines whether or not the Association shows any directionality with an arrowhead. The default is None (no arrowhead). A value of One means that the arrowhead SHALL be at the Target Object. A value of Both means that there SHALL be an arrowhead at both ends of the Association line.
   */
  var associationDirection : AssociationDirection;
  /**
   The DMNElement that the Association is connecting from.
   */
  var sourceRef : DMNElement;
  /**
   The DMNElement that the Association is connecting to.
   */
  var targetRef : DMNElement;


  init(newAssociationDirection : AssociationDirection, newSourceRef : DMNElement, newTargetRef : DMNElement) {
    self.associationDirection = newAssociationDirection;
    self.sourceRef = newSourceRef;
    self.targetRef = newTargetRef;
  }
}
