//
//  ChooseHandwritingViewController.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 21/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import UIKit

class ChooseHandwritingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    struct Constants {
        static var cellNibName                          = "HandwritingTableViewCell"
        static var cellIdentifier                       = "HandwritingTableViewCell"
        static var errorPopUpTitle                      = "Une erreur est survenue"
        static var errorPopUpMessage                    = "Merci de réessayer."
        static var errorPopUpButton                     = "Réessayer"
        static var imageViewControllerIdentifier        = "imageVC"
        static var HandwritingPreviewText               = "Dear John, Millie, and team,\n\nAs we look back upon the past year, we would like to acknowledge those who have helped us shape our business. Thanks for a great year, and we wish you all the best as you embark on 2017.\n\nAll the best,\n        The team at Handwriting.io"
        static var cartViewHeight : CGFloat             = 40
        static let animationDuration: NSTimeInterval    = 0.5
        
    }
    @IBOutlet weak var handwritingsTableView: UITableView!
    
    private var loadingView: LoaderView = LoaderView()
    private var backgroundLoadingView: LoaderView? = nil

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

        self.backgroundLoadingView = LoaderView(frame: self.handwritingsTableView.bounds)
        self.handwritingsTableView.backgroundView = self.backgroundLoadingView
        self.backgroundLoadingView?.startLoader()
        self.handwritingsTableView.separatorStyle = .None

        self.handwritingsTableView.registerNib(UINib(nibName: Constants.cellNibName, bundle: NSBundle.mainBundle()), forCellReuseIdentifier: Constants.cellIdentifier)

        self.retrieveHandwritingList()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let handwritingList = HandwritingManager.sharedInstance.handwritingList else { return 0 }
        return handwritingList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier(Constants.cellIdentifier) as? HandwritingTableViewCell else { return UITableViewCell() }
        
        guard let handwritingList = HandwritingManager.sharedInstance.handwritingList else { return cell }
        
        let handwriting = handwritingList[indexPath.row]
        
        cell.updateWithHandwriting(handwriting)
        
        return cell
    }
    
    //MARK: - UITableViewDelegate
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        guard let handwritingList = HandwritingManager.sharedInstance.handwritingList else { return }
        
        let handwriting = handwritingList[indexPath.row]
        
        self.loadingView.startLoader()

        HandwritingImageQuery().renderTextInImage(Constants.HandwritingPreviewText, width : self.view.frame.size.width, handwriting: handwriting) { (result: StandardResult<UIImage>) in
            self.loadingView.stopLoader()
            
            switch result {
            case .FAILURE:
                self.showErrorPopUp()
                
                break
            case .SUCCESS(let image):
                let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                guard let imageViewController = storyboard.instantiateViewControllerWithIdentifier(Constants.imageViewControllerIdentifier) as? imageViewController else { return }
                imageViewController.image = image
                imageViewController.handwriting = handwriting
                imageViewController.selectionnable = true
                self.navigationController?.pushViewController(imageViewController, animated: true)
                
                break
            }
        }

    }

    
    //MARK: - Private Func
    
    private func retrieveHandwritingList() {
        HandwritingManager.sharedInstance.retrieveHandwritingList {[weak self] (result: StandardResult<[Handwriting]>) in
            switch result {
            case .FAILURE:
                self?.showErrorPopUp()
                break
            case .SUCCESS:
                self?.handwritingsTableView.backgroundView = nil
                self?.backgroundLoadingView?.stopLoader()
                self?.handwritingsTableView.separatorStyle = .SingleLine
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self?.handwritingsTableView.reloadData()
                })
                
                break
            }
        }
    }
    
    private func showErrorPopUp() {
        let alert = UIAlertController(title: Constants.errorPopUpTitle, message: Constants.errorPopUpMessage, preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(title: Constants.errorPopUpButton, style: .Default, handler: { (_) -> Void in
            self.retrieveHandwritingList()
        }))
        
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }


}
