//
//  ViewController.swift
//  SceneKitDemo
//
//  Created by apple on 20/06/19.
//  Copyright © 2019 Swiftter. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    @IBOutlet weak var scnView1: SCNView!
    var sphereNode :SCNNode!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene()
        scnView1.scene = scene
        scnView1.backgroundColor = UIColor.clear
//        scnView1.autoenablesDefaultLighting = true
//        scnView1.allowsCameraControl = true
        
        let rect = CGRect(x: 0, y: 0, width: 900, height: 450)
        let circle = UIBezierPath(ovalIn: rect)
        
        
        let sphereGeometry = SCNShape(path: circle, extrusionDepth: 10)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orange
        sphereNode = SCNNode(geometry: sphereGeometry)
        sphereNode.position = SCNVector3(x: 0.0, y: 0.0, z: 4.0)
        scene.rootNode.addChildNode(sphereNode)
        
    }
    
    @IBAction func startXButtonclicked(_ sender: Any) {
        let rotateOne = SCNAction.rotateBy(x: CGFloat(0.15), y: 0, z: 0, duration: 5.0)
        sphereNode.runAction(rotateOne)
    }
    @IBAction func startYButtonclicked(_ sender: Any) {
        let rotateOne = SCNAction.rotateBy(x: 0, y: CGFloat(Float.pi/10), z: 0, duration: 5.0)
        sphereNode.runAction(rotateOne)
    }
    @IBAction func resetButtonclicked(_ sender: Any) {
//        let rotateOne = SCNAction.rotateBy(x: 0, y: 0, z: 0, duration: 5.0)
//        sphereNode.runAction(rotateOne)
//        sphereNode.re
    }
    
    
}

