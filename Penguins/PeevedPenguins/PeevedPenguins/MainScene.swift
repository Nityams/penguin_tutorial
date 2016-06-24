//
//  MainScene.swift
//  PeevedPenguins
//
//  Created by Nityam Shrestha on 6/24/16.
//  Copyright © 2016 nityamshrestha.com. All rights reserved.
//

import Foundation
import SpriteKit

class MainScene: SKScene{
 
    var buttonPlay: MSButtonNode!
    
    override func didMoveToView(view: SKView) {
        
        buttonPlay = self.childNodeWithName("buttonPlay") as! MSButtonNode
        buttonPlay.selectedHandler = {
            let skView = self.view as SKView!
            
            let scene = GameScene(fileNamed: "GameScene") as GameScene!
            scene.scaleMode = .AspectFill
            
            skView.showsPhysics = true
            skView.showsDrawCount = true
            skView.showsFPS = true
            
            skView.presentScene(scene)
            
        }
        
    }
}