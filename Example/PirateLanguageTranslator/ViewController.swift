//
//  ViewController.swift
//  PirateLanguageTranslator
//
//  Created by Dmytro.Shykaliuk on 06/13/2016.
//  Copyright (c) 2016 Dmytro.Shykaliuk. All rights reserved.
//

import UIKit
import PirateLanguageTranslator

class ViewController: UIViewController {

    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var tvInput: UITextField!
    var translator: PTranslator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        translator = PirateLanguageTranslator()
    }

    @IBAction func btnTranslate_Tapped(sender: AnyObject) {
        
        translator.translate(tvInput.text!, success: { (translated) in
            self.lblOutput.text = translated
            }) { (error) in
                self.lblOutput.text = "<Error>"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

