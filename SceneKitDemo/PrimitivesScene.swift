//
//  PrimitivesScene.swift
//  SceneKitDemo
//
//  Created by apple on 20/06/19.
//  Copyright © 2019 Swiftter. All rights reserved.
//

import UIKit
import SceneKit

class PrimitivesScene: SCNScene {
    
    var cameraNode: SCNNode?
    
    override init() {
        super.init()
        
//        let sphereGeometry = SCNBox(width: 20, height: 20, length: 10, chamferRadius: 1)
        
//         let sphereGeometry = SCNSphere(radius: 1)
        
        let rect = CGRect(x: 0, y: 0, width: 500, height: 350)
        let circle = UIBezierPath(ovalIn: rect)
        

        let sphereGeometry = SCNShape(path: circle, extrusionDepth: 10)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orange
        let sphereNode = SCNNode(geometry: sphereGeometry)
        sphereNode.position = SCNVector3(x: 0.0, y: 0.0, z: 4.0)
        self.rootNode.addChildNode(sphereNode)
 
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
