//
//  CalloutView.swift
//  lookaround2
//
//  Created by Angela Yu on 11/2/17.
//  Copyright © 2017 Angela Yu. All rights reserved.
//

import UIKit

class CalloutView: UIView {

    @IBOutlet fileprivate var contentView: UIView!
    @IBOutlet fileprivate var titleLabel: UILabel!
    @IBOutlet fileprivate var subtitleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    fileprivate func initSubviews() {
        let nib = UINib(nibName: "CalloutView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        contentView.backgroundColor = UIColor(white: 1.0, alpha: 0.6)
        addSubview(contentView)
        
    }
    
    func prepare(with title: String, subtitle: String) {
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
    }
}
