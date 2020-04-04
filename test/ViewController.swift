//
//  ViewController.swift
//  test
//
//  Created by Laxman Penmetsa on 4/4/20.
//  Copyright © 2020 dfs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cnatainer = Bundle.main.loadNibNamed("ContainerView", owner: self, options: nil)?.first as! ContainerView
        self.view.addSubview(cnatainer)
        cnatainer.loadUI()
    }


}

