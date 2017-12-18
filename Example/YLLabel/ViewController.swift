//
//  ViewController.swift
//  YLLabel
//
//  Created by feng654079 on 12/18/2017.
//  Copyright (c) 2017 feng654079. All rights reserved.
//

import UIKit
import YLLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = YLLabel(frame:CGRect(x:10,y:20,width:200,height:30))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        isBlinking = true
        
        //Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame:CGRect(x:10,y:60,width:125,height:30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking(_sender:)), for: .touchUpInside)
        view.addSubview(toggleButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    @objc func toggleBlinking(_sender:UIButton) {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}

