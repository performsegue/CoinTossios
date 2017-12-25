//
//  ViewController.swift
//  coinToss
//
//  Created by Bharath  Raj kumar on 21/10/17.
//  Copyright © 2017 Bharath Raj Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headsTails: UIImageView!
    var tossing = 0
    var toss = ["heads","tails","heads","tails"]
    var count = 0
    @IBOutlet weak var statusCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tossButton(_ sender: Any) {
        tossing = Int(arc4random_uniform(3))
        headsTails.image = UIImage(named: toss[tossing])
        count = count + 1;
        statusCount.text = "Tossed \(count) times"
        
        UIView.transition(with: self.headsTails,
                          duration:0.3,
                          options: .transitionCrossDissolve,
                          animations: { self.headsTails.image  },
                         completion: nil)
        if (count == 10)
        {
            count = 0
        }
    }
    
}

