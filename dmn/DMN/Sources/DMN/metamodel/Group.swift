//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 TheGroupobjectisanArtifact thatprovidesavisualmechanismtogroupelementsofadiagraminformally. Groups are often used to highlight certain sections of a Diagram without adding additional constraints for performance. The highlighted (grouped) section of the Diagram can be separated for reporting and analysis purposes. Groups do not affect the execution of the Decisions.
 
 As an Artifact, a Group is not a DRGElement, and, therefore, cannot be connected to/from an Information Requirement, Knowledge Requirement, or Authority Requirement. It can only be connected to/from an Association.
 
 The Group element inherits the attributes and model associations of Artifact.
 */
class Group : Artifact {

  /**
   The descriptive name of the element.
   */
  var name : String?; // optional in result of DMN spec, v1.3 site 33 (subtype Group)
  
  init(newName: String?) {
      name = newName
  }
}
