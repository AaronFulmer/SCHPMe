//
//  ViewController.swift
//  iOSTest
//
//  Created by Aaron Fulmer on 3/9/2020.
//  Copyright © 2020 Aaron Fulmer. All rights reserved.
//

import UIKit

class CholesterolEntry: UIViewController {


    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var txtTC: UITextField!
    @IBOutlet weak var txtHDL: UITextField!
    @IBOutlet weak var txtTRIG: UITextField!
    @IBOutlet weak var txtLDL: UITextField!
    @IBOutlet      var layer:           CALayer!
    @IBOutlet      var layer2:          CALayer!
    @IBOutlet weak var viewDate:        UIView!
    @IBOutlet weak var viewTime:        UIView!
    @IBOutlet weak var date:            UIDatePicker!
    @IBOutlet weak var time:            UIDatePicker!
    @IBOutlet weak var txtDateBox:      UITextField!
    @IBOutlet weak var txtTimeBox:      UITextField!
                   var dateString:      String!
                   var timeString:      String!
    
    @IBOutlet weak var scrollView:      UIScrollView!
    
    
    override func viewDidLayoutSubviews() {
       super.viewDidLayoutSubviews()
       scrollView.contentSize = CGSize(width: 330, height: 710)
        
    }
    
    @IBAction func unwind(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func gohome(_ sender: Any) {
        
        performSegue(withIdentifier: "goHomeBpEntry", sender: self)
    }
    
    
    
    
    @IBAction func tcActive(_ sender: Any) {
        layer.frame = CGRect(origin: CGPoint(x: 0, y:txtTC.frame.height), size: CGSize(width: txtTC.frame.width, height:  2))
        txtTC.layer.addSublayer(layer)
    }
    
    
    @IBAction func tcInactive(_ sender: Any) {
        layer.removeFromSuperlayer()
    }
    
    
    
    @IBAction func hdlActive(_ sender: Any) {
        layer2.frame = CGRect(origin: CGPoint(x: 0, y:txtHDL.frame.height), size: CGSize(width: txtHDL.frame.width, height:  2))
        txtHDL.layer.addSublayer(layer2)
    }
    
    
    @IBAction func hdlInactive(_ sender: Any) {
        layer2.removeFromSuperlayer()
    }
    
    @IBAction func trigActive(_ sender: Any) {
        layer2.frame = CGRect(origin: CGPoint(x: 0, y:txtTRIG.frame.height), size: CGSize(width: txtTRIG.frame.width, height:  2))
        txtTRIG.layer.addSublayer(layer2)
    }
    
    
    @IBAction func trigInactive(_ sender: Any) {
        layer2.removeFromSuperlayer()
    }
    
    @IBAction func ldlActive(_ sender: Any) {
        layer2.frame = CGRect(origin: CGPoint(x: 0, y:txtLDL.frame.height), size: CGSize(width: txtLDL.frame.width, height:  2))
        txtLDL.layer.addSublayer(layer2)
    }
    
    
    @IBAction func ldlInactive(_ sender: Any) {
        layer2.removeFromSuperlayer()
    }
    
    
    @IBAction func dateActivate(_ sender: Any) {
        viewDate.isHidden = false
        viewDate.isExclusiveTouch = true
    }
    
    @IBAction func datePicked(_ sender: Any) {
        viewDate.isHidden = true
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, YYYY"
        dateString = dateFormatter.string(from: date.date)
        txtDateBox.text = dateString
        txtDateBox.isEnabled = false
        txtDateBox.isEnabled = true
    }
    
    @IBAction func dateCancel(_ sender: Any) {
        viewDate.isHidden = true
        txtDateBox.isEnabled = false
        txtDateBox.isEnabled = true
    }
    
    @IBAction func timeActivate(_ sender: Any) {
        viewTime.isHidden = false
        viewTime.isExclusiveTouch = true
    }
    
    @IBAction func timePicked(_ sender: Any) {
        viewTime.isHidden = true
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        timeString = dateFormatter.string(from: time.date)
        txtTimeBox.text = timeString
        txtTimeBox.isEnabled = false
        txtTimeBox.isEnabled = true
    }
    
    @IBAction func timeCancel(_ sender: Any) {
        viewTime.isHidden = true
        txtTimeBox.isEnabled = false
        txtTimeBox.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtTC.frame.height), size: CGSize(width: txtTC.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtTC.borderStyle = UITextField.BorderStyle.none
        txtTC.layer.addSublayer(bottomLine)
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtHDL.frame.height), size: CGSize(width: txtHDL.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtHDL.borderStyle = UITextField.BorderStyle.none
        txtHDL.layer.addSublayer(bottomLine)
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtDateBox.frame.height), size: CGSize(width: txtHDL.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtDateBox.layer.addSublayer(bottomLine)
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtTimeBox.frame.height), size: CGSize(width: txtHDL.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtTimeBox.layer.addSublayer(bottomLine)
        
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtTRIG.frame.height), size: CGSize(width: txtHDL.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtTRIG.borderStyle = UITextField.BorderStyle.none
        txtTRIG.layer.addSublayer(bottomLine)
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtLDL.frame.height), size: CGSize(width: txtHDL.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtLDL.layer.addSublayer(bottomLine)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, YYYY"
        dateString = dateFormatter.string(from: date.date)
        txtDateBox.text = dateString
        
        dateFormatter.dateFormat = "HH:mm"
        timeString = dateFormatter.string(from: time.date)
        txtTimeBox.text = timeString
        
        layer = CALayer()
        layer.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        
        layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        
        
        lbl1.sizeToFit()
        lbl1.center.x = lbl5.center.x
        txtTC.center.x = lbl5.center.x
        txtTC.center.y = lbl1.center.y + 40
        lbl2.sizeToFit()
        lbl2.center.x = lbl5.center.x
        lbl2.center.y = txtTC.center.y + 80
        txtHDL.center.x = lbl5.center.x
        txtHDL.center.y = lbl2.center.y + 40
        lbl3.sizeToFit()
        lbl3.center.x = lbl5.center.x
        lbl3.center.y = txtHDL.center.y + 80
        txtTRIG.center.x = lbl5.center.x
        txtTRIG.center.y = lbl3.center.y + 40
        lbl4.sizeToFit()
        lbl4.center.x = lbl5.center.x
        lbl4.center.y = txtTRIG.center.y + 80
        txtLDL.center.x = lbl5.center.x
        txtLDL.center.y = lbl4.center.y + 40
        lbl5.center.y = txtLDL.center.y + 80
        txtTimeBox.center.x = lbl5.center.x
        txtTimeBox.center.y = lbl5.center.y + 40
        lbl6.sizeToFit()
        lbl6.center.x = lbl5.center.x
        lbl6.center.y = txtTimeBox.center.y + 80
        txtDateBox.center.x = lbl5.center.x
        txtDateBox.center.y = lbl6.center.y + 40
        
    }
   
    
}

