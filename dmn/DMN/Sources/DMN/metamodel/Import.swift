//
//  File.swift
//
//
//  Created by Sͬeͥbͭaͭsͤtͬian on 06.07.21.
//

import Foundation

class Import {
  var importType : URL;
  var locationURI : URL?;
  var namespace : URL;
  
  init(newImportType: URL, newNamespace : URL) {
    self.importType = newImportType;
    self.namespace = newNamespace;
  }

}
