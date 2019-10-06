//
//  ViewController.swift
//  swiftCircle
//
//  Created by Masahiro Tamamura on 2019/10/06.
//  Copyright © 2019 Masahiro Tamamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var circleView: circleView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        circleView.animateCircle(duration: 1.0)
    }
    
}

