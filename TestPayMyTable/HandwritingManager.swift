//
//  HandwritingManager.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 21/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import Foundation

protocol HandwritingObserver: NSObjectProtocol {
    func onSelectedHandwritingUpdate(handwriting: Handwriting)
}

class HandwritingManager: NSObject {
   
    struct Constants {
        static let defaultHandwritingId = "2D5QW0F80001"
        static let defaultHandwritingTitle = "Molly"
    }
    
    private enum HandwritingListQuerryStatus {
        case NONE
        case LOADING
        case FAILED
        case DONE
    }
    
    static let sharedInstance = HandwritingManager()
    
    var handwritingList : [Handwriting]? = nil
    
    var selectedHandwriting = Handwriting(id: Constants.defaultHandwritingId, title: Constants.defaultHandwritingTitle) {
        didSet {
            self.dispatchSelectedHandwritingUpdate(self.selectedHandwriting)
        }
    }
    
    var handwritingResultBlock   : ((StandardResult<[Handwriting]>) -> Void)? = nil
    
    var observers = NSHashTable.weakObjectsHashTable()

    private var catalogListQuerryStatus : HandwritingListQuerryStatus = .NONE
    
    func retrieveHandwritingList(completion : ((StandardResult<[Handwriting]>) ->Void)?) -> Void {
        
        if let list = self.handwritingList {
            completion?(.SUCCESS(list))
            return
        }
        
        self.handwritingResultBlock = completion
        
        guard self.catalogListQuerryStatus == .NONE || self.catalogListQuerryStatus == .FAILED else { return }
        
        self.catalogListQuerryStatus = .LOADING
        HandwritingsQuery().retrieveHandwritingList {[weak self] (result: StandardResult<[Handwriting]>) in
            switch result {
            case .FAILURE(let error):
//                print("FAILURE \(error)")
                self?.catalogListQuerryStatus = .FAILED
                break
            case .SUCCESS(let list):
//                print("SUCCESS \(list)")
                self?.catalogListQuerryStatus = .DONE
                self?.handwritingList = list
                break
            }
            self?.handwritingResultBlock?(result)
        }
        
    }
    
    private func dispatchSelectedHandwritingUpdate(handwriting: Handwriting) {
        
        let enumerator = observers.objectEnumerator()
        while let obj = enumerator.nextObject() {
            guard let observer = obj as? HandwritingObserver else { continue }
            observer.onSelectedHandwritingUpdate(self.selectedHandwriting)
        }
    }

    //MARK: - Add and Remove Observer
    
    func addHandwritingObserver(observer: HandwritingObserver) {
        self.observers.addObject(observer)
    }
    
    func removeHandwritingObserver(observer: HandwritingObserver) {
        self.observers.removeObject(observer)
    }

}
