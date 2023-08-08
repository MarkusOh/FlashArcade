//
//  Stage1.swift
//  FLArcade-BallBounce
//
//  Created by Seungsub Oh on 2023/08/08.
//

import SpriteKit

public class Stage1Nodes {
    let ballDiameter = 20.0
    
    var ball: SKSpriteNode?
    var walls: [SKSpriteNode] = []
}

public class Stage1: SKScene, SKPhysicsContactDelegate {
    let width: Double
    let height: Double
    
    let nodes = Stage1Nodes()
    
    public init(width: Double, height: Double) {
        self.width = width
        self.height = height
        
        super.init(size: CGSize(width: width, height: height))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func didMove(to view: SKView) {
        view.frame = CGRect(x: .zero, y: .zero, width: width, height: height)
        
        let ball = SKSpriteNode(texture: MainGame.ballTexture)
        ball.size = CGSize(width: nodes.ballDiameter, height: nodes.ballDiameter)
        ball.position = CGPoint(x: 30, y: height / 2)
        
        nodes.ball = ball
        nodes.ball?.physicsBody?.isDynamic = true
        nodes.ball?.physicsBody = SKPhysicsBody(circleOfRadius: nodes.ballDiameter / 2)
        
        addChild(nodes.ball!)
        
        physicsWorld.gravity = CGVector(dx: .zero, dy: -12)
        physicsWorld.contactDelegate = self
    }
}
