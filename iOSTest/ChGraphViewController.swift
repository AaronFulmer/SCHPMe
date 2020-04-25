//
//  ChGraphViewController.swift
//  iOSTest
//
//  Created by Garriss Moseley on 4/24/20.
//  Copyright © 2020 Garriss Moseley. All rights reserved.
//
//  This file controls the graph functions/design for the body weight readings
//  Temporary values are hardcoded here to test the functionality of the graph

import Foundation
import UIKit
import Charts

class ChChartsViewController: UIViewController {
    
    
    @IBOutlet weak var ChChartView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Function customizes look of plotted data and chart
    func setData() {
        let HDLSet = LineChartDataSet(entries: HDLValues, label: "HDL")
        let LDLSet = LineChartDataSet(entries: LDLValues, label: "LDL")
        let TRIGSet = LineChartDataSet(entries: TRIGValues, label: "TRIG")
        let TCSet = LineChartDataSet(entries: TCValues, label: "TC")
        
        HDLSet.colors = [NSUIColor.init(red: 181.0/255.0, green: 101.0/255.0, blue: 29.0/255.0, alpha: 1.0)]
        HDLSet.lineWidth = 3
        HDLSet.highlightColor = UIColor(red: 181.0/255.0, green: 101.0/255.0, blue: 29.0/255.0, alpha: 1.0)
        HDLSet.circleColors = [NSUIColor.init(red: 181.0/255.0, green: 101.0/255.0, blue: 29.0/255.0, alpha: 1.0)]
        
        
        LDLSet.colors = [NSUIColor.init(red: 218.0/255.0, green: 160.0/255.0, blue: 59.0/255.0, alpha: 1.0)]
        LDLSet.lineWidth = 3
        LDLSet.highlightColor = UIColor(red: 218.0/255.0, green: 160.0/255.0, blue: 59.0/255.0, alpha: 1.0)
        LDLSet.circleColors = [NSUIColor.init(red: 218.0/255.0, green: 160.0/255.0, blue: 59.0/255.0, alpha: 1.0)]


        TRIGSet.colors = [NSUIColor.init(red: 181.0/255.0, green: 101.0/255.0, blue: 29.0/255.0, alpha: 1.0)]
        TRIGSet.lineWidth = 3
        TRIGSet.highlightColor = UIColor(red: 181.0/255.0, green: 101.0/255.0, blue: 29.0/255.0, alpha: 1.0)
        TRIGSet.circleColors = [NSUIColor.init(red: 181.0/255.0, green: 101.0/255.0, blue: 29.0/255.0, alpha: 1.0)]
        TRIGSet.lineDashLengths = [2, 3]


        TCSet.colors = [NSUIColor.init(red: 218.0/255.0, green: 160.0/255.0, blue: 59.0/255.0, alpha: 1.0)]
        TCSet.lineWidth = 3
        TCSet.highlightColor = UIColor(red: 218.0/255.0, green: 160.0/255.0, blue: 59.0/255.0, alpha: 1.0)
        TCSet.circleColors = [NSUIColor.init(red: 218.0/255.0, green: 160.0/255.0, blue: 59.0/255.0, alpha: 1.0)]
        TCSet.lineDashLengths = [2, 3]

       // Plots data on chart
        let ChData = LineChartData(dataSets: [HDLSet, LDLSet, TRIGSet, TCSet])
        // Line below removes values above circles
        // bwData.setDrawValues(false)
        self.ChChartView.data = ChData

        // Customizes look of chart
        self.ChChartView.rightAxis.enabled = false
        self.ChChartView.xAxis.drawGridLinesEnabled = false
        self.ChChartView.leftAxis.drawGridLinesEnabled = false
        self.ChChartView.rightAxis.drawGridLinesEnabled = false
        self.ChChartView.xAxis.labelPosition = .bottom
        
    }
    
    // Dummy data
    let HDLValues: [ChartDataEntry] = [
        ChartDataEntry(x: 1.0, y: 5.0),
        ChartDataEntry(x: 2.0, y: 7.0),
        ChartDataEntry(x: 3.0, y: 4.0)]
    
    let LDLValues: [ChartDataEntry] = [
        ChartDataEntry(x: 1.0, y: 14.0),
        ChartDataEntry(x: 2.0, y: 10.0),
        ChartDataEntry(x: 3.0, y: 14.0)]

    let TRIGValues: [ChartDataEntry] = [
        ChartDataEntry(x: 1.0, y: 7.0),
        ChartDataEntry(x: 2.0, y: 9.0),
        ChartDataEntry(x: 3.0, y: 8.0)]

    let TCValues: [ChartDataEntry] = [
        ChartDataEntry(x: 1.0, y: 5.0),
        ChartDataEntry(x: 2.0, y: 11.0),
        ChartDataEntry(x: 3.0, y: 19.0)]

    
}
