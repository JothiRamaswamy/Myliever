//
//  ViewController.swift
//  Myliever
//
//  Created by Jothi Ramaswamy on 3/12/18.
//  Copyright © 2018 Jothi Ramaswamy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel! //1st q answer label
    @IBOutlet weak var slider1: UISlider! //1st q answer slider
    @IBAction func Pressed1(_ sender: Any) { //extracting answer value
        
        let value = Int(slider1.value)
        self.label1.text = "\(value)"
        
        if slider1.value == 110 {
           self.label1.text = "\(value)+"
        }
        
    }
    
    @IBOutlet weak var label2: UILabel! //2nd q answer label
    @IBOutlet weak var slider2: UISlider! //2nd q answer slider
    @IBAction func Pressed2(_ sender: Any) { //extracting answer value
        
        let value = Int(slider2.value)
        self.label2.text = "\(value)"
        
        if slider2.value == 300 {
            self.label2.text = "\(value)+"
        }
        
    }
    
    @IBOutlet weak var label3: UILabel! //3rd q answer label
    @IBOutlet weak var slider3: UISlider! //3rd q answer slider
    @IBAction func Pressed3(_ sender: Any) { //extracting answer value
        
        let value = Int(slider3.value)
        self.label3.text = "\(value)"
        
        if slider3.value == 10 {
            self.label3.text = "\(value)+"
        }
        
    }
    
    @IBOutlet weak var label4: UILabel! //4th q answer label
    @IBOutlet weak var slider4: UISlider! //4th q answer slider
    @IBAction func Pressed4(_ sender: Any) { //extracting answer value
        
        let value = Int(slider4.value)
        self.label4.text = "\(value)"
        
        if slider4.value == 10 {
            self.label4.text = "\(value)+"
        }
        
    }
    
    @IBOutlet weak var label5: UILabel! //5th q answer label
    @IBOutlet weak var slider5: UISlider! //5th q answer slider
    @IBAction func Pressed5(_ sender: Any) { //extracting answer value
        
        let value = Int(slider5.value)
        self.label5.text = "\(value)"
        
        if slider5.value == 10 {
            self.label5.text = "\(value)+"
        }
        
    }
    
    @IBOutlet weak var label6: UILabel! //6th q answer label
    @IBOutlet weak var slider6: UISlider! //6th q answer slider
    @IBAction func Pressed6(_ sender: Any) { //extracting answer value
        
        let value = Int(slider6.value)
        self.label6.text = "\(value)"
        
        if slider6.value == 20 {
            self.label6.text = "\(value)+"
        }
        
    }
    
    
    @IBOutlet weak var button7: UISegmentedControl! //7th q- yes/no question
    
    @IBOutlet weak var label8: UILabel! //8th q answer label
    @IBOutlet weak var slider8: UISlider! //8th q answer slider
    @IBAction func Pressed8(_ sender: Any) { //extracting answer value
        
        let value = Int(slider8.value)
        self.label8.text = "\(value)"
        
    }
    
    @IBOutlet weak var label9: UILabel! //9th q answer label
    @IBOutlet weak var slider9: UISlider! //9th q answer slider
    @IBAction func Pressed9(_ sender: Any) { //extracting answer value
        
        let value = Int(slider9.value)
        self.label9.text = "\(value)"
        
    }
    
    var percentRisk = 49
    
    @IBAction func infoSent(_ sender: Any) { //computing risk
        
        let one = Int((slider1.value - 70) / 4)
        let two = Int((abs(slider2.value - 150)) / 15)
        let three = Int(slider3.value * 2)
        let four = Int(slider4.value)
        let five = Int(slider5.value)
        let six = Int(slider6.value / 2)
        var seven = 0
        if (button7.selectedSegmentIndex == 0) {
            seven = 20
        }
        let eight = Int(slider8.value * 2)
        let nine = Int(slider9.value)
        
        var total = one + two + three + four + five
            
        total = total + six + seven + eight + nine
        
        percentRisk = Int(5 * total / 6)
        
        UserDefaults().set(percentRisk, forKey: "percentRisk")
        
        performSegue(withIdentifier: "resultScrn", sender: self)
    }
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.view.backgroundColor = UIColor.clear
        
        // 2
        gradientLayer.frame = self.view.bounds
        
        // 3
        let color4 = UIColor(red:0.80, green:0.90, blue:1.00, alpha:0.6).cgColor as CGColor
        let color3 = UIColor(red:0.80, green:0.90, blue:1.00, alpha:0.85).cgColor as CGColor
        let color2 = UIColor(red:0.80, green:0.90, blue:1.00, alpha:1.0).cgColor as CGColor
        //let color1 = UIColor(red:0.60, green:0.68, blue:0.75, alpha:1.0).cgColor as CGColor
        gradientLayer.colors = [color4, color3, color2]
        
        // 4
        gradientLayer.locations = [0.25, 0.4, 0.8]
        
        // 5
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

