//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 DRGElement is the abstract superclass for all **DMN** elements that are contained within Definitions and that have a graphical representation in a DRD. All the elements of a **DMN** decision model that are not contained directly in a Definitions element (specifically: all three kinds of requirement, bindings, clause and decision rules, import, and objective) SHALL be contained in an instance of DRGElement, or in a model element that is contained in an instance of DRGElement, recursively.
 
 The specializations of DRGElement are Decision, InputData, Invocable, and KnowledgeSource. Invocable is further specialized into BusinessKnowledgeModel and DecisionService.
 
 DRGElement is a specialization of NamedElement, from which it inherits the name and optional id, description and label attributes. The id of a DRGElement element SHALL be unique within the containing instance of Definitions.
 
 A **Decision Requirements Diagram (DRD)** is the diagrammatic representation of one or more instances of DRGElement and their information, knowledge and authority requirement relations. The instances of DRGElement are represented as the vertices in the diagram; the edges represent instances of InformationRequirement, KnowledgeRequirement or AuthorityRequirement (see clauses 6.3.13, 6.3.14, and 6.3.15). The connection rules are specified in 6.2.3).
 
 DRGElement inherits all the attributes and model associations of NamedElement. It does not define additional attributes and model associations of the DRGElement element.
 */
class DRGElement : NamedElement {
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
}
