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
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
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
            detailViewController = currentControllers.first as? InternetDetailViewController
            
        }
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        
        // Do any additional setup after loading the view.
    }
    override public func numberOfSections(in tableView: UITableView, numberOfRowsInSection section: Int) -> Int
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
            "reuseIdentifier", for : indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
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
    
    
  
    
}
