//
//  AlgorithmsViewController.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmsViewController: UIViewController
{
    // MARK: Datamembers
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    
    private func createParagraphStyle() -> NSParagraphStyle
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
