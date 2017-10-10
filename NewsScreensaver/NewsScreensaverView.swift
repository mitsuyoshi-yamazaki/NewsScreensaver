//
//  NewsScreensaverView.swift
//  NewsScreensaver
//
//  Created by mitsuyoshi.yamazaki on 2017/10/10.
//  Copyright © 2017年 Mitsuyoshi Yamazaki. All rights reserved.
//

import Foundation
import ScreenSaver

class NewsScreensaverView: ScreenSaverView {
  
  override var animationTimeInterval: TimeInterval {
    set {}
    get {
      return 1.0 / 30.0
    }
  }
  
  override func startAnimation() {
    super.startAnimation()
  }
  
  override func stopAnimation() {
    super.stopAnimation()
  }
  
  override func animateOneFrame() {
    return
  }
  
  override func hasConfigureSheet() -> Bool {
    return false
  }
  
  override func configureSheet() -> NSWindow? {
    return nil
  }
}
