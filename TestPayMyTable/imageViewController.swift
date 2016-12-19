//
//  imageViewController.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 19/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    let handwritingImageView = UIImageView()
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Create image View
        // Warning, the max height is not check
        
        self.handwritingImageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.handwritingImageView)
        self.view.addConstraints([
            ALCCenterYIsCenterY(self.view, secondItem: self.handwritingImageView),
            ALCLeftIsLeft(self.view, secondItem: self.handwritingImageView),
            ALCRightIsRight(self.view, secondItem: self.handwritingImageView)
            ])
        self.handwritingImageView.clipsToBounds = true
        self.handwritingImageView.contentMode = .ScaleAspectFit
        
        
        self.handwritingImageView.image = self.image
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
