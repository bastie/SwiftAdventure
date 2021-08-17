//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 The abstract class BusinessContextElement, and its concrete specializations PerformanceIndicator and OrganizationUnit are placeholders, anticipating a definition to be adopted from other OMG meta-models, such as OMG OSM when it is further developed.
 BusinessContextElement is a specialization of NamedElement, from which it inherits the name and optional id, description and label attributes.
 In addition, instances of BusinessContextElements may have a URI, which is a URI, and
 <ul>
 <li>an instance of PerformanceIndicator references any number of impactingDecision, which are the Decision elements that impact it;</li>
 <li> an instance of OrganisationalUnit references any number of decisionMade and of decisionOwned, which are the Decision elements that model the decisions that the organization unit makes or owns.
 </li>
 </ul>
 BusinessContextElement inherits all the attributes and model associations from NamedElement.
 */
class BusinessContextElement : NamedElement {
    
    override init(newName: String) throws {
        try super.init(newName:newName);
    }
    
    ///   The URI of this BusinessContextElement.
    var anyURI : URL?; // Attention: DMN v1.3 image site 40 calls it URI, but table site 41 calls it anyURI
}
