//
//  IBInstantiatable.swift
//  NewsScreensaver
//
//  Created by mitsuyoshi.yamazaki on 2017/10/10.
//  Copyright © 2017年 Mitsuyoshi Yamazaki. All rights reserved.
//

import Cocoa

protocol IBInstantiatable: class {
  static var ibFileName: String { get }
  static var nib: NSNib { get }
  
  static func instantiate() -> Self
}

extension IBInstantiatable {
  static var ibFileName: String {
    return String.init(describing: self)
  }
}

extension IBInstantiatable where Self: NSView {
  static var nib: NSNib {
    let bundle = Bundle.init(for: self)
    return NSNib.init(nibNamed: ibFileName, bundle: bundle)!
  }
  
  static func instantiate() -> Self {
    var topLevelObjects = NSArray()
    let bundle = Bundle.init(for: self)
    
    bundle.loadNibNamed(ibFileName, owner: self, topLevelObjects: &topLevelObjects)
    
    return topLevelObjects.filter { $0 is Self }.first as! Self
  }
}

// The codes are completely same as `extension IBInstantiatable where Self: View`
// But NSWindow does not inherit NSView and `where` clause does not support `where Self: NSView or NSWindow`
extension IBInstantiatable where Self: NSWindow {
  static var nib: NSNib {
    let bundle = Bundle.init(for: self)
    return NSNib.init(nibNamed: ibFileName, bundle: bundle)!
  }
  
  static func instantiate() -> Self {
    var topLevelObjects = NSArray()
    let bundle = Bundle.init(for: self)
    
    bundle.loadNibNamed(ibFileName, owner: self, topLevelObjects: &topLevelObjects)
    
    return topLevelObjects.filter { $0 is Self }.first as! Self
  }
}
