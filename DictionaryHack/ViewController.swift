//
//  ViewController.swift
//  DictionaryHack
//
//  Created by Scott McCoy on 8/12/16.
//  Copyright © 2016 OpenX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
   
    
    override func viewDidLoad() {
        
        let words = TumblerHacker().getValidWords()
        NSLog("\(words)")
        NSLog("\(words.count) valid words total")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

