//
//  MainGame.swift
//  FLArcade-BallBounce
//
//  Created by Seungsub Oh on 2023/08/08.
//

import UIKit
import SwiftUI
import Combine
import SpriteKit

@objcMembers
public class MainGame: NSObject {
    public static let bundle = Bundle(for: MainGame.self)
    public static let ballTexture = SKTexture(image: UIImage(named: "ball", in: bundle, with: nil)!)
    public static let wallTexture = SKTexture(image: UIImage(named: "wall", in: bundle, with: nil)!)
    
    public func view(width: Double, height: Double) -> some View {
        SpriteView(scene: Stage1(width: width, height: height))
            .frame(width: width, height: height)
    }
}
