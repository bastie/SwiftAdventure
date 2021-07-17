//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

/**
 The class Decision is used to model a decision.
 
 Decision is a concrete specialization of DRGElement and it inherits the name and optional id, description and label attributes from NamedElement The name of an Invocable must be different from the name of any other invocable, input data, decision, or import in the decision model.
 
 In addition, it may have a question and allowedAnswers, which are all strings. The optional description attribute is meant to contain a brief description of the decision-making embodied in the Decision. The optional question attribute is meant to contain a natural language question that characterizes the Decision such that the output of the Decision is an answer to the question. The optional allowedAnswers attribute is meant to contain a natural language description of the answers allowed for the question such as Yes/No, a list of allowed values, a range of numeric values etc.
 
 In a DRD, an instance of Decision is represented by a decision diagram element.
 
 A Decision element is composed of an optional decisionLogic, which is an instance of Expression, and of zero or more informationRequirement, knowledgeRequirement and authorityRequirement elements, which are instances of InformationRequirement, KnowledgeRequirement and AuthorityRequirement, respectively.
 
 In addition, a Decision defines an InformationItem representing its output. This InformationItem may include an optional typeRef, which references an ItemDefinition or other type definition specifying the datatype of the possible outcomes of the Decision.
 
 The requirement subgraph of a Decision element is the directed graph composed of the Decision element itself, its informationRequirements, its knowledgeRequirements, and the union of the requirement subgraphs of each requiredDecision or requiredKnowledge element: that is, the requirement subgraph of a Decision element is the closure of the informationRequirement, requiredInput, requiredDecision, knowledgeRequirement and requiredKnowledge associations starting from that Decision element.
 
 An instance of Decision – that is, the model of a decision – is said to be well-formed if and only if all of its informationRequirement and knowledgeRequirement elements are well-formed, That condition entails, in particular, that the requirement subgraph of a Decision element SHALL be acyclic, that is, that a Decision element SHALL not require itself, directly or indirectly.
 
 Besides its logical components: information requirements, decision logic etc, the model of a decision may also document a business context for the decision (see clause 6.3.8 and Figure 6-13).
 
 The business context for an instance of Decision is defined by its association with any number of supportedObjectives, which are instances of Objective as defined in OMG BMM, any number of impactedPerformance Indicators, which are instances of Performance Indicator, any number of decisionMaker and any number of decisionOwner, which are instances of OrganisationalUnit.
 
 In addition, an instance of Decision may reference any number of usingProcess, which are instances of Process as defined in OMG BPMN 2.0, and any number of usingTask, which are instances of Task as defined in OMG BPMN 2.0, and which are the Processes and Tasks that use the Decision element.
 
 Decision inherits all the attributes and model associations from DRGElement.
 */
class Decision : DRGElement {

  /// A natural language question that characterizes the Decision such that the output of the Decision is an answer to the question.
  var question : String?;
  /// A natural language description of the answers allowed for the question such as Yes/No, a list of allowed values, a range of numeric values etc.
  var allowedAnswers : String?;
  /**
   This attribute lists the instances of BPMN::process that
   require this Decision to be made.
   */
  var usingProcess : [Process] = [];
  /**
   This attribute lists the instances of BPMN::task that make
   this Decision.
   */
  var usingTask : [Task] = [];
  /**
   This attribute lists the instances of BMM::Objective that are supported by this Decision.
   */
  var supportedObjective : [Objective] = [];
  
  var inputData : InputData?; // TODO: is it really an Optional?
  
  /**
   This attribute lists the instances of KnowledgeRequirement that compose this Decision.
   */
  var knowledgeRequirement : [KnowledgeRequirement] = [];
  /**
   This attribute lists the instances of InformationRequirement that compose this Decision.
   */
  var informationRequirement : [InformationRequirement] = [];
  /// The instance of Expression that represents the decision logic for this Decision.
  var decisionLogic : Expression?;
  
  /**
   The instances of OrganisationalUnit that own this Decision.
   */
  var decisionOwner : [OrganisationalUnit] = [];
  /**
   The instances of OrganisationalUnit that make this Decision.
   */
  var decisionMaker : [OrganisationalUnit] = [];
  
  /**
   This attribute lists the instances of PerformanceIndicator that are impacted by this Decision.
   */
  var impactedPerformanceIndicator : [PerformanceIndicator] = [];
  
  /**
   This attribute lists the instances of AuthorityRequirement that compose this Decision.
   */
  var authoritotyRequerement : [AuthorityRequirement] = [];
  
  override init(newName: String) throws {
      try super.init(newName:newName);
  }
}
