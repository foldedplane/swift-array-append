//
//  ViewController.swift
//  SwiftArrayAppend
//
//  Created by Gordon Johnston on 25/06/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var kruskal: Kruskal!

    override func viewDidLoad() {
        kruskal = Kruskal()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dictionaryArrayAppend(sender: AnyObject) {
        
        let startTime = NSDate()
        kruskal.dictionaryArrayAppend()
        let elapsed = startTime.timeIntervalSinceNow
        print ("Dictionary/Array append took \(-elapsed)")
        
    }
    
    @IBAction func dictionaryNSMutableArrayAppend(sender: AnyObject) {
        
        let startTime = NSDate()
        kruskal.dictionaryNSMutableArrayAppend()
        let elapsed = startTime.timeIntervalSinceNow
        print ("Dictionary/NSMutableArray append took \(-elapsed)")

    }
    @IBAction func arrayArrayAppend(sender: AnyObject) {
    
        let startTime = NSDate()
        kruskal.arrayArrayAppend()
        let elapsed = startTime.timeIntervalSinceNow
        print ("Array/Array append took \(-elapsed)")
    }
    
}

