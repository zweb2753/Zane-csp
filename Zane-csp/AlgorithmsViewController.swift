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
    {
        var algorithmSteps : [String] = []
        
        // TODO: Define algorithm and all steps
        let algorithm :String = "These are the instructions \n"
        let stepOne :String = "Create new project"
        let stepTwo :String = "Create all classes"
        let stepThree :String = "imports/variables"
        //let stepFour :String = "write the code"
        //let stepFive :String = "test the code"
        
        // TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree]
        
        let attributedDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributedDictionary)
        
        for step in algorithmSteps
        {
            //creates bulleet points with the symbol
            let bullet :String = "heart"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle],range:
                NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    // this function changes how the paragrah is formtte and set up.
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle;
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
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
