//
//  ViewController.swift
//  PeakandPop
//
//  Created by Rockibul on 6/4/17.
//  Copyright © 2017 Rockibul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let preview = storyboard?.instantiateViewController(withIdentifier: "view2")
        return preview
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        let finalview = storyboard?.instantiateViewController(withIdentifier: "view3")
        show(finalview!, sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if(traitCollection.forceTouchCapability == UIForceTouchCapability.available){
            registerForPreviewing(with: self, sourceView: view)
        }
        else{
            print("it's compatable")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

