//
//  GameScene.swift
//  PeevedPenguins
//
//  Created by Nityam Shrestha on 6/23/16.
//  Copyright (c) 2016 nityamshrestha.com. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var catapultArm: SKSpriteNode!
    var levelNode: SKNode!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        catapultArm = self.childNodeWithName("catapultArm") as! SKSpriteNode
        levelNode = self.childNodeWithName("\\levelNode")
        
        // loading level 1
        
        let resourchPath = NSBundle.mainBundle().pathForResource("Level1", ofType: "sks")
        let newLevel = SKReferenceNode(URL: NSURL(fileURLWithPath: resourchPath!))
        levelNode.addChild(newLevel)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        let resourcePath = NSBundle.mainBundle().pathForResource("Penguin", ofType: "sks")
        let penguin = MSReferenceNode(URL: NSURL(fileURLWithPath: resourcePath!))
        addChild(penguin)
        penguin.avatar.position = catapultArm.position + CGPoint(x:32, y:50)
        
        let launchDirection = CGVector(dx:1, dy:0)
        let force = launchDirection * 10
        penguin.avatar.physicsBody?.applyImpulse(force)
            }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
