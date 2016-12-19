//
//  ViewController.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 18/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendButton: UIButton!

    private var loadingView: LoaderView = LoaderView()

    struct Constants {
        static var imageViewControllerIdentifier    = "imageVC"
        static var errorPopUpTitle                  = "Attention"
        static var errorPopUpNoTextMessage          = "Il faut saisir un texte pour continuer."
        static var errorPopUpMessage                = "Une erreur est survenue, merci de réessayer."
        static var errorPopUpButton                 = "Ok"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadingView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.loadingView)
        
        self.view.addConstraints([
            ALCLeftIsLeft(self.loadingView, secondItem: self.view),
            ALCRightIsRight(self.loadingView, secondItem: self.view),
            ALCTopIsTop(self.loadingView, secondItem: self.view),
            ALCBottomIsBottom(self.loadingView, secondItem: self.view)
            ])

        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonClicked(sender: UIButton) {
        
        // Check that the textfield isn't empty
        guard self.textView.text.characters.count > 0 else {
            self.displayPopUp(Constants.errorPopUpNoTextMessage)
            return
        }
        
        //TODO : Check special characters

        self.loadingView.startLoader()

        HandwritingQuery().renderTextInImage(self.textView.text, width : self.view.frame.size.width) { (result: StandardResult<UIImage>) in
            self.loadingView.stopLoader()

            switch result {
            case .FAILURE:
                self.displayPopUp(Constants.errorPopUpMessage)
                break
            case .SUCCESS(let image):
                let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                guard let imageViewController = storyboard.instantiateViewControllerWithIdentifier(Constants.imageViewControllerIdentifier) as? imageViewController else { return }
                imageViewController.image = image
                
                self.navigationController?.pushViewController(imageViewController, animated: true)

                break
            }
        }
    }

    private func displayPopUp(errorDescription : String) {
        let alert = UIAlertController(title: Constants.errorPopUpTitle, message: errorDescription, preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(title: Constants.errorPopUpButton, style: .Cancel, handler: nil))
        
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            self.presentViewController(alert, animated: true, completion: nil)
        }

    }
    
}

