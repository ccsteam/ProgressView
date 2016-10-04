//
//  ProgressView.swift
//  MPK
//
//  Created by Mike Rudoy on 10/3/16.
//  Copyright © 2016 MPK. All rights reserved.
//

import UIKit

/// The `ProgressHUD` is the helper class to display application loading state.
public class ProgressHUD {

    /**
     Disables user`s interactions and shows activity indicator.
     */
    public class func showHUD() {
        let hudView = ProgressView()
        applicationRootView().addSubview(hudView)
    }

    /**
     Reenables user`s interactions and remove activity indicator.
     */
    public class func hideHUD() {
        let huds = applicationRootView().subviews.filter { (view) -> Bool in
            return view.isKindOfClass(ProgressView)
        }
        huds.forEach { $0.removeFromSuperview() }
    }

    /// Returns application rootview.
    private class func applicationRootView() -> UIView {
        let delegate = UIApplication.sharedApplication().delegate!
        let rootController = delegate.window!!.rootViewController!
        return rootController.view
    }

}
