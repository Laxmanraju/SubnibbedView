//
//  DetailOptionView.swift
//  CouponBox
//
//  Created by Laxman Penmetsa on 3/29/20.
//  Copyright © 2020 HardShell. All rights reserved.
//

import UIKit

enum DetailOptionType{
    case takePhoto
    case photoLibrary
}

@IBDesignable
class DetailOptionView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
          if self.subviews.count == 0{
            initialize()

        }
    }
    
    func initialize() {
        guard let view = loadViewFromNib() else { return }
    }
    
    private func loadViewFromNib() -> UIView? {
           let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "DetailOptionView", bundle: bundle)
           return nib.instantiate(withOwner: self, options: nil).first as? UIView
       }
    
    @IBOutlet weak var roundedView: UIView!
    @IBOutlet  weak var imageView: UIImageView!
    @IBOutlet  weak var optionLabel: UILabel!
    var optionType: DetailOptionType?
    
    func configureForType(_ type: DetailOptionType){
        self.optionType = type
        switch optionType {
        case .takePhoto:
            imageView.image = UIImage(systemName: Constants.ImageNames.cameraFill)
            break
        case .photoLibrary:
//             imageView.image = UIImage(systemName: Constants.ImageNames.cameraFill)
            break
        default:
            break
        }
    }
  
}
