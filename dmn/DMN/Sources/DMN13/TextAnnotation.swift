//
//  File.swift
//  
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 04.07.21.
//

import Foundation

/**
 Text Annotations are a mechanism for a modeler to provide additional text information for the reader of a DMN Diagram.
 
 The TextAnnotation element inherits the attributes and model associations of DMNElemen
 */
class TextAnnotation : Artifact {
    
    /**
     Text is an attribute that is text that the modeler wishes to communicate to the reader of the Diagram.
     */
    var text : String = "";
    /**
     This attribute identifies the format of the text. It SHALL follow the mime-type format. The default is "text/plain."
     */
    var textFormat : String = "text/plain";
    
}
