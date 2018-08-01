//
//  InitialViewController.swift
//  Myliever
//
//  Created by Jothi Ramaswamy on 3/15/18.
//  Copyright © 2018 Jothi Ramaswamy. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1
        self.view.backgroundColor = UIColor.clear
        
        // 2
        gradientLayer.frame = self.view.bounds
        
        // 3
        let color4 = UIColor(red:0.80, green:0.90, blue:1.00, alpha:0.6).cgColor as CGColor //top gradient color
        let color3 = UIColor(red:0.80, green:0.90, blue:1.00, alpha:0.85).cgColor as CGColor //middle gradient color
        let color2 = UIColor(red:0.80, green:0.90, blue:1.00, alpha:1.0).cgColor as CGColor //lower gradient color
        //let color1 = UIColor(red:0.60, green:0.68, blue:0.75, alpha:1.0).cgColor as CGColor
        gradientLayer.colors = [color4, color3, color2]
        
        // 4
        gradientLayer.locations = [0.25, 0.4, 0.8]
        
        // 5
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
























