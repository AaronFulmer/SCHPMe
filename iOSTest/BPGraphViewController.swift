//
//  BPGraphViewController.swift
//  iOSTest
//
//  Created by Garriss Moseley on 3/18/20.
//  Copyright © 2020 Garriss Moseley. All rights reserved.
//
//  This file controls the graph functions/design for the
//  blood pressure readings
//
//  UPDATE 3/18/2020 - To test the functionality of the
//  graph, this class takes user input on the graph page and
//  builds a line chart
//  the functionality and UI will be modified later the
//  reflect the Android version of the app

import Foundation
import UIKit
import Charts

class BPChartsViewController: UIViewController {
    
    
    @IBOutlet weak var BPChartView: LineChartView!
    @IBOutlet weak var sysTextBox: UITextField!
    @IBOutlet weak var diaTextBox: UITextField!
    
     var systolic: [Double] = []
     var diastolic: [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sysButton(_ sender: Any) {
        let sysInput = Double(sysTextBox.text!)
        systolic.append(sysInput!)
        updateGraph()
    }
    
    @IBAction func diaButton(_ sender: Any) {
        let diaInput = Double(diaTextBox.text!)
        diastolic.append(diaInput!)
        updateGraph()
    }
    

    func updateGraph() {
        let bpData = LineChartData()
        var bpSystolic = [ChartDataEntry]()
        
        for i in 0..<systolic.count {
            bpSystolic.append(ChartDataEntry(x: Double(i), y: Double(systolic[i])))
    }
        
        let sysLine = LineChartDataSet(entries: bpSystolic, label: "Systolic")
        sysLine.colors = [NSUIColor.init(red: 255.0/255.0, green: 192.0/255.0, blue: 203.0/255.0, alpha: 1.0)]
        sysLine.lineWidth = 3
        sysLine.highlightColor = .red
        sysLine.circleColors = [NSUIColor.init(red: 255.0/255.0, green: 192.0/255.0, blue: 203.0/255.0, alpha: 1.0)]
        
        bpData.addDataSet(sysLine)
        
        if (diastolic.count > 0) {
            var bpDiastolic = [ChartDataEntry]()
            for i in 0..<diastolic.count {
                bpDiastolic.append(ChartDataEntry(x: Double(i), y: Double(diastolic[i]) ))
            }
            let diaLine = LineChartDataSet(entries: bpDiastolic, label: "Diastolic")
            diaLine.colors = [NSUIColor.red]
            diaLine.lineWidth = 3
            diaLine.highlightColor = .red
            diaLine.circleColors = [NSUIColor.red]
            
            bpData.addDataSet(diaLine)
        }
        
        // Displays data and customizes the graph
        self.BPChartView.data = bpData
        self.BPChartView.rightAxis.enabled = false
        self.BPChartView.xAxis.drawGridLinesEnabled = false
        self.BPChartView.leftAxis.drawGridLinesEnabled = false
        self.BPChartView.rightAxis.drawGridLinesEnabled = false
        self.BPChartView.xAxis.labelPosition = .bottom
        
 }

}
// Will need invalidate() and notifyDataSetChanged() to notify the graphs
// that data has been added/deleted and needs to be refreshed
