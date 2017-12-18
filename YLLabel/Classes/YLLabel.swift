//
//  YLLabel.swift
//  Pods-YLLabel_Example
//
//  Created by Ifeng科技 on 2017/12/18.
//

import Foundation
public class YLLabel : UILabel {
    public func startBlinking() {
        let options: UIViewAnimationOptions = [.repeat,.autoreverse]
        UIView.animate(withDuration: 0.25, delay: 0.0, options: options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations();
    }
}
