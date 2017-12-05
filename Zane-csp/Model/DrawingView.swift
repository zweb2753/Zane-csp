//
//  DrawingView.swift
//  Zane-csp
//
//  Created by Weber, Zane on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class DrawingView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
   // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        private func drawStickFigure() -> UIBezierPath
        {
            let stickFigure = UIBezierPath()
            
            UIColor.magenta.setStroke()
            stickFigure.lineWidth = 3.0
            
            stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                               radius: CGFloat(20),
                               startAngle: CGFloat(0),
                               endAngle: CGFloat(2) * CGFloat.pi,
                               clockWise: true)
            stickFigure.move(to: CGPoint(x: 200, y: 228))
            stickFigure.addLine(
        }

    }
}
