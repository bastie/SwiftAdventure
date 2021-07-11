//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 The Definitions class is the outermost containing object for all elements of a DMN decision model.
 
 It defines the scope of visibility and the namespace for all contained elements. Elements that are contained in an instance of Definitions have their own defined life-cycle and are not deleted with the deletion of other elements. The interchange of DMN files will always be through one or more Definitions.
 
 Definitions is a kind of `NamedElement`, from which an instance of Definitions inherits the `name` and optional `id`, `description` and `label` attributes, which are Strings.
 
 An instance of Definitions has a namespace, which is a String. The namespace identifies the default target namespace for the elements in the Definitions and follows the convention established by XML Schema.
 
 An instance of Definitions may specify an expressionLanguage, which is a URI that identifies the default expression language used in elements within the scope of this Definitions. This value may be overridden on each individual LiteralExpression. The language SHALL be specified in a URI format. The default expression language is FEEL (clause 10), indicated by the URI: “https://www.omg.org/spec/DMN/20191111/FEEL/”. The simple expression language S-FEEL (clause 9), being a subset of FEEL, is indicated by the same URI. DMN provides a URI for expression languages that are not meant to be interpreted automatically (e.g., pseudo-code that may resemble FEEL but is not): "http://www.omg.org/spec/DMN/uninterpreted/20140801".
 
 An instance of Definitions may specify a typeLanguage, which is a URI that identifies the default type language used in elements within the scope of this Definitions. For example, a typeLanguage value of “http://www.w3.org/2001/XMLSchema” indicates that the data structures defined within that Definitions are, by default, in the form of XML Schema types. If unspecified, the default typeLanguage is FEEL. This value may be overridden on each individual ItemDefinition. The typeLanguage SHALL be specified in a URI format (the URI for FEEL is “https://www.omg.org/spec/DMN/20191111/FEEL/”; the URI "http://www.omg.org/spec/DMN/uninterpreted/20140801" can be used to indicate that a type definition is not meant to be interpreted)).
 
 An instance of Definitions may specify an exporter and exporterVersion, which are Strings naming the tool and version used to create the XML serialization. In standards such as BPMN, this has been found to aid in model interchange between tools.
 
 An instance of Definitions is composed of zero or more drgElements, which are instances of DRGElement, zero or more elementCollections, which are instances of ElementCollection, zero or more itemDefinitions, which are instances of ItemDefinition and of zero or more businessContextElements, which are instances of BusinessContextElement.
 
 It may contain any number of associated import, which are instances of Import. Imports are used to import elements defined outside of this Definitions, e.g. in other Definitions elements, and to make them available for use by elements in this Definitions.
 
 Definitions inherits all the attributes and model associations from NamedElement.
 */
class Definitions : NamedElement {
  
  /**
   This attribute identifies the namespace associated with this Definitions and follows the convention established by XML Schema.
   */
  var namespace : URL; // https://developer.apple.com/documentation/foundation/url
  /**
   This attribute identifies the expression language used in LiteralExpressions within the scope of this Definitions. The Default is FEEL (clause 10). This value MAY be overridden on each individual LiteralExpression. The language SHALL be specified in a URI format.
   */
  var expressionLanguage : URL?;
  /**
   This attribute identifies the type language used in LiteralExpressions within the scope of this Definitions. The Default is FEEL (clause 10). This value MAY be overridden on each individual ItemDefinition. The language SHALL be specified in a URI format.
   */
  var typeLanguage : URL?;
  /**
   This attribute names the tool used to export the XML serialization.
   */
  var exporter : String?;
  /**
   This attribute names the version of the tool used to export the XML serialization.
   */
  var exporterVersion : String?;

  /**
   This attribute lists the instances of BusinessContextElement that are contained in this Definitions.
   */
  var businessContextElement : [BusinessContextElement] = [];
  /**
   This attribute lists the instances of ItemDefinition that are contained in this Definitions.
   */
  var itemDefinition : [ItemDefinition] = [];
  /**
   This attribute is used to import externally defined elements and make them available for use by elements in this Definitions.   */
  var import_ : [Import] = []; // add _ after import to be compatble with Swift
  /**
   This attribute lists the instances of ElementCollection that are contained in this Definitions.
   */
  var elementCollection : [ElementCollection] = [];
  /**
   This attribute lists the instances of DRGElement that are contained in this Definitions.
   */
  var drgElement : [DRGElement] = [];
  /**
   This attribute contains the Diagram Interchange information contained within this Definitions (see Clause 13 for more information on the DMN Diagram Interchange).
   */
  var dmnDI : DMNDI?;
  /**
   Artifacts include text annotations, groups, and associations among DMN elements.
   */
  var artifact:[Artifact] = [];
  
  init(newName: String, newNamespace : URL) throws {
    self.namespace = newNamespace;
    try super.init(newName:newName);
  }
}
