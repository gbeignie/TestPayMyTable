//
//  LoaderView.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 18/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import UIKit

class LoaderView: UIView {
    
    private var loader      = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
    
    init()
    {
        super.init(frame: CGRectZero)
        self.loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadView()
    }
    
    convenience init(loaderStyle: UIActivityIndicatorViewStyle) {
        self.init()
        self.loader = UIActivityIndicatorView(activityIndicatorStyle: loaderStyle)
        self.loadView()
    }
    
    func loadView() {
        self.loader.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.loader)
        
        self.hidden = true
        self.alpha = 0
        self.userInteractionEnabled = false
        self.backgroundColor = UIColor(white: 0.5, alpha: 0.5)

        
        self.addConstraints([
            ALCCenterXIsCenterX(self.loader, secondItem: self),
            ALCCenterYIsCenterY(self.loader, secondItem: self)
            ])
    }
    
    func startLoader() {
        self.alpha = 1
        self.hidden = false
        self.userInteractionEnabled = true
        self.loader.startAnimating()
    }
    
    func stopLoader() {
        UIView.animateWithDuration(0.2,
                                   animations: { () -> Void in
                                    self.alpha = 0
        }) { (finished) -> Void in
            self.hidden = true
            self.userInteractionEnabled = false
            self.loader.stopAnimating()
            
        }
    }
    
}
