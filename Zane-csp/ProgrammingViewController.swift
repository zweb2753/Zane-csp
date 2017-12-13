//
//  ProgrammingViewController.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.sie)
        let gameView = view as! SKView
        
        gameView.showFPS = true
        gameView.showsNodeCount = true
        gameView.ignoesSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)

        // Do any additional setup after loading the view.
    }

 


}
