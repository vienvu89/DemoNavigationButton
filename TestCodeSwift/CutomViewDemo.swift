//
//  CutomViewDemo.swift
//  TestCodeSwift
//
//  Created by Vien Vu  on 1/2/16.
//  Copyright © 2016 VienVu. All rights reserved.
//

import UIKit

class CutomViewDemo: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    private func commonInit() {
        NSBundle.mainBundle().loadNibNamed("CutomViewDemo", owner: self, options: nil)
        guard let content = contentView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.FlexibleHeight, .FlexibleWidth]
        self.addSubview(content)
    }
}
