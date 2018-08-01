//
//  SecondViewController.swift
//  Myliever
//
//  Created by Jothi Ramaswamy on 3/13/18.
//  Copyright © 2018 Jothi Ramaswamy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var roundView: UIView!
    
    @IBAction func linkPressed(_ sender: Any) {
        
        openUrl(urlStr: "https://www.healthline.com/health/arthritis-prevention")
    }
    
    func openUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
    }
    
    var percentage : Float! = Float(UserDefaults().integer(forKey: "percentRisk"))

    
  
        //UIApplication.shared.open(URL(fileURLWithPath: ""))
    //}
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // vary this to move the start of the arc
        let startAngle = -CGFloat.pi / 2 // This corresponds to 12 0&#39;clock
        // vary this to vary the size of the segment, in per cent
        let proportion = CGFloat(percentage)
        let centre = CGPoint (x: roundView.frame.size.width / 2, y:
            roundView.frame.size.height / 2)
        let radius = roundView.frame.size.width / 2
        let arc = CGFloat.pi * 2 * proportion / 100 // i.e. the proportion of a full circle
        
        // Start a mutable path
        let cPath = UIBezierPath()
        // Move to the centre
        cPath.move(to: centre)
        // Draw a line to the circumference
        cPath.addLine(to: CGPoint(x: centre.x + radius * cos(startAngle), y: centre.y +
            radius * sin(startAngle)))
        // NOW draw the arc
        cPath.addArc(withCenter: centre, radius: radius, startAngle: startAngle, endAngle:
            arc + startAngle, clockwise: true)
        // Line back to the centre, where we started (or the stroke doesn&#39;t work, though the fill does)
        cPath.addLine(to: CGPoint(x: centre.x, y: centre.y))
        // n.b. as @MartinR points out `cPath.close()` does the same!
        
        // circle shape
        let circleShape = CAShapeLayer()
        circleShape.path = cPath.cgPath
        circleShape.strokeColor = UIColor.clear.cgColor
        circleShape.fillColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:0.9).cgColor
        circleShape.lineWidth = 1.5
        // add sublayer
        roundView.layer.addSublayer(circleShape)
        // Do any additional setup after loading the view, typically from a nib.
        let fontSize = CGFloat(20)
        let font = UIFont(name: "Papyrus", size: fontSize)
        //let font = UIFont.systemFont(ofSize: fontSize)
        let attributes = [NSAttributedStringKey.font: font]
        // Format the string
        let str = String(format: "%3.0f%%", proportion)
        // Calculate the text size
        let textSize = str.size(withAttributes: attributes)
        
        // Assume the centre of the text is half way along the bisector of the segment
        let halfAngle = startAngle + arc / 2
        
        let centreText = CGPoint(x: centre.x + radius * cos(halfAngle) / 2, y: centre.y +
            radius * sin(halfAngle) / 2)
        // calculate the the lower left of the label given the size
        let originText = CGPoint(x: centreText.x - textSize.width / 2, y: centreText.y -
            textSize.height / 2)
        // Allocate the text layer
        let label = CATextLayer()
        label.font = font
        label.fontSize = fontSize
        label.frame = CGRect(origin: originText, size: textSize)
        label.string = str
        label.alignmentMode = kCAAlignmentCenter
        label.foregroundColor = UIColor.black.cgColor
        roundView.layer.addSublayer(label)
        
        // vary this to vary the size of the segment, in per cent
        let proportion1 = CGFloat(percentage)
        let centre1 = CGPoint (x: roundView.frame.size.width / 2, y:
            roundView.frame.size.height / 2)
        let radius1 = roundView.frame.size.width / 2
        let arc1 = CGFloat.pi * 2 * proportion1 / 100 // i.e. the proportion of a full circle
        
        // Start a mutable path
        let cPath1 = UIBezierPath()
        // Move to the centre
        cPath1.move(to: centre1)
        // Draw a line to the circumference
        cPath1.addLine(to: CGPoint(x: centre1.x + radius1 * cos(startAngle), y: centre1.y +
            radius1 * sin(startAngle)))
        // NOW draw the arc
        cPath1.addArc(withCenter: centre1, radius: radius1, startAngle: startAngle,
                      endAngle: arc1 + startAngle, clockwise: false)
        // Line back to the centre, where we started (or the stroke doesn&#39;t work, though the fill does)
        cPath1.addLine(to: CGPoint(x: centre1.x, y: centre1.y))
        // n.b. as @MartinR points out `cPath.close()` does the same!
        
        // circle shape
        let circleShape1 = CAShapeLayer()
        circleShape1.path = cPath1.cgPath
        circleShape1.strokeColor = UIColor.clear.cgColor
        circleShape1.fillColor = UIColor(red:0.80, green:0.90, blue:1.00, alpha: 0.6).cgColor
        circleShape1.lineWidth = 1.5
        // add sublayer
        roundView.layer.addSublayer(circleShape1)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        let percent:Int = UserDefaults().integer(forKey: "percentRisk")
        
        
        //1
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
