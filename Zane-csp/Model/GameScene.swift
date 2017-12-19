//
//  GameScene.swift
//  Zane-csp
//
//  Created by Weber, Zane on 12/15/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class GameScene: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func moveInvaders() -> Void
    {
        var changeDirection = false
        enumerateChildNodes(withName: "invader")
        {
            //closure parameters
            node, stop in
            let invader = node as! SKSpriteNode
            let invaderHalfWith = invader.size.width / 2
            invader.position.x -= CGFloat(self.invaderSpeed)
            if(invader.position.x > self.rightBounds - invaderHalfWidth || invader.position.x < self.leftBounds +
                invaderHalfWidth)
            {
                changeDirection = true
            }
        }
        
        if(changeDirection == true)
        {
            
        }
        
        public func didBegin(_ contact: SKPhysicsContact) -> Void
        {
            var firstBody: SKPhysicsBody
            var secondBody: SKPhysicsBody
            
            if contact.bodyAcategoryBitMask < contact.bodyB.categoryBitMask
            {
                firstBody = contact.bodyA
                sendBody = contact.bodyB
            }
            
            if ((firstBody.categoryBitMask & CollisionCategories.Player))
        }
        func newGame() -> Void
        {
            let newGameScene = startScene(size: size)
            newGameScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontal(withDuration: 0.5)
            view?.presentScene(newGameScene,transition: transitionType)
        }
        
        func levelComplete() -> Void
        {
            if(gameLevel <= maxLevels)
            {
                let levelCompleteScene = LeveCompleteScene(size: size)
                levelCompleteScene.scaleMode = scaleMode
                let transitionType = SKTransition.ipHorizontal(withDuration: 0.5)
                view?.presentScene(levelCompeteScene, transition: transitionType)
            }
            else
            {
                gameLevel = 1
                newGame()
                
            }
            
            override public func didMove(o view: SKView) -> Void
            {
                self.physicsWorld.gravity = CGVector(dx:0, dy:0)
                self.physicsWorld.contactDelegate
            }
            
            private func invokeInvaderFire() -> Void
            {
                let fireBullet = SKAction.run()
                {
                    self.fireInvaderBullet()
                }
                let waitToFireInvaderBullet = SKAction.wait(forDuration: 2.5)
                let invaderFire = SKAction.sequence([fireBullet,waitToFireInvaderBullet])
                let invaderFire = SkAction.repeatForever(invaderFire)
                run(repeatForeverAction)
            }
            
            override public func didSimulatePhysics()
            {
                player.physicsBody?.velocity = CGVector(dx: accelerationX * 600, dy: 0)
            }
        }
        
        func setupAccelerometer()
        {
            
            motionManager.accelerometerUpdateInterval = 0.2
            motionManagger.startAccelerometerUpdates(to: OperatnQueue.curren!, withHandler:
                {
                    (accelerometerData:CMAccelerometerData?, error: Error?)
                    in
                    let acceleration = accelerometerData!.acceleration
                    self.accelerationX = CGFloat(acceleration.x)
            })
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
