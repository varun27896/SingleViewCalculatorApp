//
//  ViewController.swift
//  Assignment1_1802426
//
//  Created by Chillara, Sravan Varun on 9/14/19.
//  Copyright © 2019 Chillara, Sravan Varun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var lbDecimalOutput: UILabel!
    @IBOutlet weak var lbBinaryOutput: UILabel!
    @IBOutlet weak var lbHexaDecimalOutput: UILabel!
    @IBOutlet weak var lbOctalOutput: UILabel!
    @IBOutlet weak var lbOutletSegment: UISegmentedControl!
    @IBOutlet weak var tfInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfInput.resignFirstResponder()
    }
    override func viewWillAppear(_ animated: Bool) {
        tfInput.resignFirstResponder()
    }
    
    
    
    @IBAction func btnClear(_ sender: Any) {
        tfInput.text=""
        lbOutletSegment.selectedSegmentIndex = 0
        lbDecimalOutput.text = "Decimal"
        lbBinaryOutput.text = "Binary"
        lbOctalOutput.text = "Octal"
        lbHexaDecimalOutput.text = "Hexa Decimal"
        
        
    }
   
    @IBAction func btnConvert(_ sender: Any) {
        switch lbOutletSegment.selectedSegmentIndex
        {
        case 0:
            inputValue=Int(tfInput.text!) ?? 1
            
            let binary=String(inputValue,radix:2)
            lbBinaryOutput.text = "Binary : " + binary
            let octal=String(inputValue,radix:8)
            lbOctalOutput.text = "Octal : " + octal
            let hexadecimal=String(inputValue,radix:16)
            lbHexaDecimalOutput.text = "Hexa Decimal : " + hexadecimal
            
            
        case 1:
            
            
            newinputValue=tfInput.text!
            
            let decimal=String(Int(newinputValue,radix:2)!)
            lbDecimalOutput.text = "Decimal : " + decimal
            let octal=String(Int(newinputValue,radix:2)!,radix:8)
            lbOctalOutput.text = "Octal : " + octal
            let hexadecimal=String(Int(newinputValue,radix:2)!,radix:16)
            lbHexaDecimalOutput.text = "Hexa Decimal : " + hexadecimal
            
        case 2:
            newinputValue=tfInput.text!
            let decimal=String(Int(newinputValue,radix:8)!)
            lbDecimalOutput.text = "Decimal : " + decimal
            let binary=String(Int(newinputValue,radix:8)!,radix:2)
            lbBinaryOutput.text = "Binary : " + binary
            let hexadecimal=String(Int(newinputValue,radix:8)!,radix:16)
            lbHexaDecimalOutput.text = "Hexa Decimal : " + hexadecimal
            
        case 3:
            newinputValue=tfInput.text!
            let decimal=String(Int(newinputValue,radix:16)!)
            lbDecimalOutput.text = "Decimal : " + decimal
            let binary=String(Int(newinputValue,radix:16)!,radix:2)
            lbBinaryOutput.text = "Binary : " + binary
            let octal=String(Int(newinputValue,radix:16)!,radix:8)
            lbOctalOutput.text = "Octal : " + octal
            
        default:
            break;
            
            
        }
    }
    
    
    var inputValue:Int = 0
    var newinputValue=""
    
    
    
    
    
    
    
    


}

