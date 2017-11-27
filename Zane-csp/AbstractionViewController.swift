//
//  AbstractionViewController.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIViewController
{
    private (set) lazy var orderedAbstrationViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel : "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(atractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLeve: "AndGate"),
        ]
    }()
        
    //Helper method to retrieve the correct view controller
    private func newAbstractionViewController(abstractionLevel : String) -> UIViController
        
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

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
