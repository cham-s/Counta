//
//  ViewController.swift
//  Counta
//
//  Created by chams on 08/01/2019.
//  Copyright © 2019 Chams. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var countButton: NSButton!
    @IBOutlet weak var countLabel: NSTextField!
    var counter = 0 {
        didSet {
            countLabel.stringValue = "\(counter)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func startNewCounter() {
        counter = 0
        countLabel.stringValue = "\(counter)"
        countButton.stringValue = "Count Down"
        
    }

    @IBAction func resetPushed(_ sender: Any) {
        startNewCounter()
    }
    
    @IBAction func countPushed(_ sender: Any) {
        let button = sender as! NSButton
        
        if button.title == "Count Down" {
            // lauch alert
            button.title = "Default Count"
        } else {
            startNewCounter()
            
        }
    }
    
    @IBAction func incrementerPushed(_ sender: Any) {
        let button = sender as! NSButton
        
        if button.title == "+" {
            counter += 1
        } else {
            counter -= 1
            counter = counter < 0 ? 0 : counter
        }
    }
    
}

