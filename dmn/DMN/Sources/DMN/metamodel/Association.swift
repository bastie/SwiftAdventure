//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

class Association : Artifact {
  
  var associationDirection : AssociationDirection;
  
  var sourceRef : DMNElement;
  var targetRef : DMNElement;


  init(newAssociationDirection : AssociationDirection, newSourceRef : DMNElement, newTargetRef : DMNElement) {
    self.associationDirection = newAssociationDirection;
    self.sourceRef = newSourceRef;
    self.targetRef = newTargetRef;
  }
}
