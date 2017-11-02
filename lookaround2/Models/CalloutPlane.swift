//
//  CalloutPlane.swift
//  lookaround2
//
//  Created by Angela Yu on 11/2/17.
//  Copyright © 2017 Angela Yu. All rights reserved.
//

import UIKit
import SceneKit

class CalloutPlane: SCNPlane {
    fileprivate var annotation: Annotation!
    fileprivate var calloutView: CalloutView!
    
    override init() {
        super.init()
        width = 1.0
        height = 1.0
        // self.cornerRadius = 5
        
        calloutView = CalloutView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
    }
    
    convenience init(annotation: Annotation) {
        self.init()
        self.width = 8.0
        self.height = 4.0
        self.cornerRadius = 1
        self.annotation = annotation
        calloutView = CalloutView(frame: CGRect(x: 0, y: 0, width: 800, height: 400))
//        guard let title = annotation.title, let subtitle = annotation.subtitle else {
//            print("no annotation title or subtitle")
//            return
//        }
        let title = "Sweet Stop"
        let subtitle = "16 friends like this"
        calloutView.prepare(with: title, subtitle: subtitle)
        self.firstMaterial?.diffuse.contents = calloutView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setAnnotation(with annotation: Annotation) {
        self.annotation = annotation
        guard let title = annotation.title, let subtitle = annotation.subtitle else {
            print("no annotation title or subtitle")
            return
        }
        calloutView.prepare(with: title, subtitle: subtitle)
        self.firstMaterial?.diffuse.contents = calloutView
        //calloutView.layoutIfNeeded()
    }
}
