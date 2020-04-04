//
//  ContainerView.swift
//  test
//
//  Created by Laxman Penmetsa on 4/4/20.
//  Copyright © 2020 dfs. All rights reserved.
//

import UIKit

class ContainerView: UIView {
    @IBOutlet weak var detail: DetailOptionView!

    func loadUI(){
        print(detail.imageView)
    }
}
