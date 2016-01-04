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
        let strOrign = "北京"
        let str = NSMutableString(string: strOrign) as CFMutableStringRef
        CFStringTransform(str, nil, kCFStringTransformMandarinLatin, false)
        let str1 = NSMutableString(string: strOrign) as CFMutableStringRef
        CFStringTransform(str1, nil, kCFStringTransformMandarinLatin, false)
        
        print(str as String)
        print(str1 as String)
        if str == str1{
            print(1)
        }else{
            print(0)
        }
        
        let str_0 = str as String
        let str_1 = str1 as String
        let a = str_0.componentsSeparatedByString(" ")
        let b = str_1.componentsSeparatedByString(" ")
        
        print(a)
        print(b)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

