//
//  ViewController.swift
//  iOStest
//
//  Created by 张子名 on 1/5/16.
//  Copyright © 2016 lenmontech. All rights reserved.
//

import UIKit
import CoreFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str = NSMutableString(string: "暗") as CFMutableStringRef
        if CFStringTransform(str, nil, kCFStringTransformMandarinLatin, false) {
            print(str)
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

