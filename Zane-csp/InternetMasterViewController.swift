//
//  InternetMasterViewController.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class InternetMasterViewController : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    private lazy var adresses : [String] = []
    
    private var detailViewontroller : InternetDetailViewController?
    
    private func setup() -> Void
    {
        addresses = [
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            
        ]
        
    if let splitView = splitViewController
    {
        let currentControllers = splitView.viewControllers
        detailVewController = currentControllers.first as? InternetDeailiewController
        
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
    }
    override public func numberOfSectons(in tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITable, cellForRowat indexPath: IndexPath) -> UITableView
    {
        let cell = tableView.dequeueReusableCell(withIdentier:
            "reuseIdentifier", for : index Path)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.idetnifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    pageText = "All the definitions you wrote......."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as!
                    InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controllerNavigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.vavgationItem
            }
        }
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
