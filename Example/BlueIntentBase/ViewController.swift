//
//  ViewController.swift
//  BlueIntentBase
//
//  Created by qiuzhifei on 06/17/2021.
//  Copyright (c) 2021 qiuzhifei. All rights reserved.
//

import UIKit

extension String: BlueIntentCompatible { }

extension BlueIntentExtension where Base == String {
  public var length: Int {
    return base.count
  }
}

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(
      UILabel().bi.var { it in
        it.frame = CGRect.zero.bi.var({ it in
          let originX: CGFloat = 20
          let originY: CGFloat = 100
          let width = UIScreen.main.bounds.width - originX * 2
          let height: CGFloat = 160
          return CGRect(x: originX, y: originY, width: width, height: height)
        })
        it.text = "Use `BlueIntentExtension` proxy as customization point for constrained protocol extensions."
        it.text = it.text?.bi.var({ it in
          return "\(it)\n\nstring length: \(it.bi.length)"
        })
        it.numberOfLines = 0
        return it
      }
      
    )
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

