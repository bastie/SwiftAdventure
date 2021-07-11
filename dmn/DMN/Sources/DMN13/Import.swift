//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 06.07.21.
//

import Foundation

/**
 The Import class is used when referencing external elements, either DMN DRGElement or ItemDefinition instances contained in other Definitions elements, or non-DMN elements, such as an XML Schema or a PMML file. Imports SHALL be explicitly defined.
 
 An instance of Import has an importType, which is a String that specifies the type of import associated with the element. For example, a value of “http://www.w3.org/2001/XMLSchema” indicates that the imported element is an XML schema. The DMN namespace indicates that the imported element is a DMN Definitions element.
 
 The location of the imported element may be specified by associating an optional locationURI with an instance of Import. The locationURI is a URI.
 
 An instance of Import has a namespace, which is a URI that identifies the namespace of the imported element, and also a name, inherited from NamedElement, which is a string that serves as a prefix in namespace-qualified names, such as typeRefs specifying imported ItemDefinitions and expressions referencing imported InformationItems. The namespace value should be globally unique, but the import name, which is typically a short business-friendly name,must be distinct from the names of other imports, decisions, input data, business knowledge models, decision services, and item definitions within the importing model only.
 */
class Import {
  /**
   Specifies the style of import associated with this Import.
   */
  var importType : URL;
  /**
   Identifies the location of the imported element.
   */
  var locationURI : URL?;
  /**
   Identifies the namespace of the imported element.
   */
  var namespace : URL;
  
  init(newImportType: URL, newNamespace : URL) {
    self.importType = newImportType;
    self.namespace = newNamespace;
  }

}
