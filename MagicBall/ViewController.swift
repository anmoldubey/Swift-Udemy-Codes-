//
//  ViewController.swift
//  MagicBall
//
//  Created by administrator on 12/04/18.
//  Copyright © 2018 administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageArray: [String] = ["ball1","ball2", "ball3","ball4", "ball5"]
    var randomNumber = 0;
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func randomMagicBall(){
        randomNumber = Int(arc4random_uniform(5));
        imageView.image = UIImage(named: imageArray[randomNumber]);
    }

    @IBAction func pressMeButton(_ sender: UIButton) {
        randomMagicBall()
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomMagicBall()
    }
}

