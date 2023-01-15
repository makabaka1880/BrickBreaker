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
    var scnScene: SCNScene!
    var game = GameHelper.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        scnView.allowsCameraControl = true
    }
    
    // MARK: SetupScene()
    func setupScene() {
        scnScene = .init(named: "Breaker.scnassets/Scenes/Game.scn")!
        scnView = self.view as! SCNView
        scnView.delegate = self
        scnView.scene = scnScene
        game.hudNode.position = .init(x: 0, y: 20, z: 0)
        scnScene.rootNode.addChildNode(game.hudNode)
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
        game.updateHUD()
    }
}
