//
//  ViewController.swift
//  MagiKBall
//
//  Created by Peter Nguyen on 10/1/19.
//  Copyright © 2019 Peter Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var initialBall : Int = 0
    @IBOutlet weak var magicBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomMessages()
    }

    func randomMessages() {
        initialBall = Int(arc4random_uniform(4) + 1)
        magicBallImage.image = UIImage(named: "ball\(initialBall)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomMessages()
    }

}

