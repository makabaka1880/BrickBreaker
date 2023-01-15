//
//  GameViewController.swift
//  BrickBreaker
//
//  Created by SeanLi on 1/15/23.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    var scnView: SCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: SetupScene()
    func setupScene() {
        scnView = self.view as! SCNView
        scnView.delegate = self
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var shouldAutorotate: Bool {
        return false
    }

}

extension GameViewController: SCNSceneRendererDelegate {
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
    }
}
