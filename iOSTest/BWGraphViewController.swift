//
//  BWGraphViewController.swift
//  iOSTest
//
//  Created by Garriss Moseley on 4/24/20.
//  Copyright © 2020 Garriss Moseley. All rights reserved.
//
// This file controls the graph functions/design for the body weight readings
// Temporary values are hardcoded here to test the functionality of the graph

import Foundation
import UIKit
import Charts

class BWChartsViewController: UIViewController {
    
    @IBOutlet weak var BWChartView: LineChartView!
    
    override func viewDidLoad() {
         super.viewDidLoad()
         
         setData()
     }
     
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }
     
     // Function customizes look of plotted data and chart
     func setData() {
         let bwSet = LineChartDataSet(entries: bwValues, label: "Weight")
         bwSet.colors = [NSUIColor.init(red: 243.0/255.0, green: 113.0/255.0, blue: 27.0/255.0, alpha: 1.0)]
         bwSet.lineWidth = 3
         bwSet.highlightColor = UIColor(red: 243.0/255.0, green: 113.0/255.0, blue: 27.0/255.0, alpha: 1.0)
         bwSet.circleColors = [NSUIColor.init(red: 240.0/255.0, green: 94.0/255.0, blue: 35.0/255.0, alpha: 1.0)]
         
        // Plots data on chart
         let bwData = LineChartData(dataSet: bwSet)
         // Line below removes values above circles
         // bwData.setDrawValues(false)
         self.BWChartView.data = bwData

         // Customizes look of chart
         self.BWChartView.rightAxis.enabled = false
         self.BWChartView.xAxis.drawGridLinesEnabled = false
         self.BWChartView.leftAxis.drawGridLinesEnabled = false
         self.BWChartView.rightAxis.drawGridLinesEnabled = false
         self.BWChartView.xAxis.labelPosition = .bottom
         
     }
     
     // Dummy data
     let bwValues: [ChartDataEntry] = [
         ChartDataEntry(x: 1.0, y: 11.0),
         ChartDataEntry(x: 2.0, y: 15.0),
         ChartDataEntry(x: 3.0, y: 4.0),
         ChartDataEntry(x: 4.0, y: 12.0),
         ChartDataEntry(x: 5.0, y: 9.0),
         ChartDataEntry(x: 6.0, y: 7.0),
         ChartDataEntry(x: 7.0, y: 7.0),
         ChartDataEntry(x: 8.0, y: 5.0)
     ]
}
