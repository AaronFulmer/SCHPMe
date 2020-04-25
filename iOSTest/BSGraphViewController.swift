//
//  BSGraphViewController.swift
//  iOSTest
//
//  Created by Garriss Moseley on 4/24/20.
//  Copyright © 2020 Garriss Moseley. All rights reserved.
//
//  This file controls the graph functions/design for the blood sugar readings
//  Temporary values are hardcoded here to test the functionality of the graph

import Foundation
import UIKit
import Charts

class BSChartsViewController: UIViewController {
    
    @IBOutlet weak var BSChartView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Function customizes look of plotted data and chart
    func setData() {
        let bsSet = LineChartDataSet(entries: bsValues, label: "Blood Sugar")
        bsSet.colors = [NSUIColor.init(red: 131.0/255.0, green: 93.0/255.0, blue: 167.0/255.0, alpha: 1.0)]
        bsSet.lineWidth = 3
        bsSet.highlightColor = UIColor(red: 131.0/255.0, green: 93.0/255.0, blue: 167.0/255.0, alpha: 1.0)
        bsSet.circleColors = [NSUIColor.init(red: 106.0/255.0, green: 13.0/255.0, blue: 173.0/255.0, alpha: 1.0)]
        
       // Plots data on chart
        let bsData = LineChartData(dataSet: bsSet)
        // Line below removes values above circles
        // bsData.setDrawValues(false)
        self.BSChartView.data = bsData

        // Customizes look of chart
        self.BSChartView.rightAxis.enabled = false
        self.BSChartView.xAxis.drawGridLinesEnabled = false
        self.BSChartView.leftAxis.drawGridLinesEnabled = false
        self.BSChartView.rightAxis.drawGridLinesEnabled = false
        self.BSChartView.xAxis.labelPosition = .bottom
        
    }
    
    // Dummy data
    let bsValues: [ChartDataEntry] = [
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
