//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

class Decision : DRGElement {

  var question : String?;
  var allowedAnswers : String?;
  
  var usingProcess : [Process] = [];
  var usingTask : [Task] = [];
  var supportedObjective : [Objective] = [];
  
  
  override init(newName: String) throws {
      try super.init(newName:newName);
  }
}
