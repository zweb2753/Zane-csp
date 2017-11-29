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
    
    private var detailViewontroller : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
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
        let cell = tableView.dequeueReusable
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
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
