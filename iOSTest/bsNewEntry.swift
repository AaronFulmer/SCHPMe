//
//  ViewController.swift
//  iOSTest
//
//  Created by Aaron Fulmer on 3/7/20.
//  Copyright © 2020 Aaron Fulmer. All rights reserved.
//

import UIKit

class BloodSugarEntry: UIViewController {

    
    @IBOutlet weak var txtSystolic: UITextField!
    @IBOutlet var layer: CALayer!
    //@IBOutlet var layer2: CALayer!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var viewDate: UIView!
    @IBOutlet weak var viewTime: UIView!
    @IBOutlet weak var time: UIDatePicker!
    @IBOutlet weak var txtDateBox: UITextField!
    @IBOutlet weak var txtTimeBox: UITextField!
    @IBOutlet weak var radFasting: UIButton!
    @IBOutlet weak var radNonfasting: UIButton!
    let checkedImage = UIImage(named: "RadioChecked")
    let uncheckedImage = UIImage(named: "RadioUnchecked")
    var dateString: String!
    var timeString: String!
    
    
    
    @IBAction func unwind(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func gohome(_ sender: Any) {
        
        performSegue(withIdentifier: "goHomeBsEntry", sender: self)
    }
    
    
    
    @IBAction func txtSystolicActive(_ sender: Any) {
        layer.frame = CGRect(origin: CGPoint(x: 0, y:txtSystolic.frame.height), size: CGSize(width: txtSystolic.frame.width, height:  2))
        txtSystolic.layer.addSublayer(layer)
    }
    
    
    @IBAction func txtSystolicInactive(_ sender: Any) {
        layer.removeFromSuperlayer()
    }
    
    
    
    
    
    @IBAction func dateActivate(_ sender: Any) {
        viewDate.isHidden = false
        viewDate.isExclusiveTouch = true
        txtDateBox.endEditing(true)
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
    
    @IBAction func fastToggle(_ sender: Any) {
        radFasting.setImage(checkedImage, for: UIControl.State.normal)
        radNonfasting.setImage(uncheckedImage, for: UIControl.State.normal)
    }
    @IBAction func nonfastToggle(_ sender: Any) {
        radFasting.setImage(uncheckedImage, for: UIControl.State.normal)
        radNonfasting.setImage(checkedImage, for: UIControl.State.normal)
    }
    @IBAction func timeActivate(_ sender: Any) {
        viewTime.isHidden = false
        viewTime.isExclusiveTouch = true
        txtTimeBox.endEditing(true)
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
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtSystolic.frame.height), size: CGSize(width: txtSystolic.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtSystolic.borderStyle = UITextField.BorderStyle.none
        txtSystolic.layer.addSublayer(bottomLine)
        
    
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtDateBox.frame.height), size: CGSize(width: txtSystolic.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtDateBox.layer.addSublayer(bottomLine)
        
        bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:txtTimeBox.frame.height), size: CGSize(width: txtSystolic.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        txtTimeBox.layer.addSublayer(bottomLine)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, YYYY"
        dateString = dateFormatter.string(from: date.date)
        txtDateBox.text = dateString
        
        dateFormatter.dateFormat = "HH:mm"
        timeString = dateFormatter.string(from: time.date)
        txtTimeBox.text = timeString
        
        layer = CALayer()
        layer.backgroundColor = UIColor(red: 28/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1.0).cgColor
        
        
    }
   
    
}

