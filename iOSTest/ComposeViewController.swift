//
//  ComposeViewController.swift
//  iOSTest
//
//  Created by FMU on 2/27/20.
//  Copyright © 2020 Aaron Fulmer. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase
class ComposeViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var ref:DatabaseReference?
    
    var databaseHandle:DatabaseHandle?
    @IBOutlet weak var tableView: UITableView!
    var postData = [String]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
        cell?.textLabel?.text = postData[indexPath.row]
        
        return cell!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self as? UITableViewDataSource
            
            // Set the firebase reference
            ref = Database.database().reference()
        
            
        
        
        
            // Retrieve the posts and listen for changes
        databaseHandle = ref!.child("Locations").observe(.value, with: { (snapshot) in
                
                // Code to execute when a child is added under "Locations"
                // Take the value from the snapshot and added it to the postData array
                
                // Try to convert the value of the data to a string
                //let post = snapshot.value as? NSDictionary
            
            let data = snapshot.value as? [String:NSDictionary]
            
            for (key, value) in data!{
                //print("\(key)AND\(value)")
                for (key, value2) in value{
                    
                    print("Key: \(key)")
                    print("\tValue: \(value2)\n")
                    let c = "\(key) = \(value2)"
                    // Append the data to our postData array
                    self.postData += [c]
                    
                    
                    
                    
                    
                }
                
            }
            // Reload the tableView
            self.tableView.reloadData()
            })
            
        }
        
        
        
        // Do any additional setup after loading the view.
    
    
func addPost(_ sender: Any) {
    }
    
func cancelPost(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
