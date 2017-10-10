//
//  ContentView.swift
//  NewsScreensaver
//
//  Created by mitsuyoshi.yamazaki on 2017/10/10.
//  Copyright © 2017年 Mitsuyoshi Yamazaki. All rights reserved.
//

import Cocoa
import Quartz

final class ContentView: NSView, IBInstantiatable {
  
  @IBOutlet private weak var pdfView: PDFView! {
    didSet {
      let url = Bundle.init(for: type(of: self)).url(forResource: "002", withExtension: "pdf")!
      let document = PDFDocument.init(url: url)!
      pdfView.document = document
      pdfView.backgroundColor = .white
    }
  }
  
  func showNextPage() {
    pdfView.goToNextPage(self)
  }
}
