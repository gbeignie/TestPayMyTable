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
    
    var handwriting : Handwriting? = nil
    
    var selectionnable = false
    
    var image : UIImage?
    var selectButton  = UIButton()
    
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

        guard selectionnable else { return }
        
        // Create selection button if needed
        self.selectButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.selectButton)
        self.view.addConstraints([
            ALCBottomIsBottomWithConstant(self.view, secondItem: self.selectButton, layoutConstant: 10),
            ALCLeftIsLeft(self.view, secondItem: self.selectButton),
            ALCRightIsRight(self.view, secondItem: self.selectButton),
            ALCHeightIsConstant(self.selectButton, layoutConstant: 30)
            ])
        self.selectButton.addTarget(self, action: #selector(self.onClickSelect), forControlEvents: .TouchUpInside)
        self.selectButton.setTitle("Selectionner", forState: UIControlState.Normal)
        self.selectButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onClickSelect() {
        HandwritingManager.sharedInstance.selectedHandwriting = self.handwriting!
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
