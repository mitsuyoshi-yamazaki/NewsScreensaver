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
  
  let contentView: ContentView = {
    let view = ContentView.instantiate()
    view.autoresizingMask = [ NSAutoresizingMaskOptions.viewWidthSizable, .viewHeightSizable ]
    
    return view
  }()
  
  // MARK: - Lifecycle
  override init?(frame: NSRect, isPreview: Bool) {
    super.init(frame: frame, isPreview: isPreview)
    
    contentView.frame = bounds
    addSubview(contentView)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - ScreenSaverView
  override var animationTimeInterval: TimeInterval {
    set {}
    get {
      return 2.0
    }
  }
  
  override func startAnimation() {
    super.startAnimation()
  }
  
  override func stopAnimation() {
    super.stopAnimation()
  }
  
  override func animateOneFrame() {
    contentView.showNextPage()
  }
  
  override func hasConfigureSheet() -> Bool {
    return false
  }
  
  override func configureSheet() -> NSWindow? {
    return nil
  }
}
