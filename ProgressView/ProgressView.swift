//
//  ProgressView.swift
//  MPK
//
//  Created by Mike Rudoy on 10/3/16.
//  Copyright © 2016 MPK. All rights reserved.
//

import UIKit

class ProgressView: UIView {

    /**
     Creates base progressview, with popup shield, and activity indicator.
     */
    init() {
        super.init(frame: UIScreen.mainScreen().bounds)
        let background = UIView.init(frame: self.bounds)
        background.backgroundColor = UIColor.blackColor()
        background.alpha = 0.5;
        self.addSubview(background)
        let progressView = UIView.init(frame: CGRectMake(0, 0, 70, 70))
        progressView.center = self.center
        progressView.backgroundColor = UIColor.whiteColor()
        progressView.opaque = true
        progressView.layer.cornerRadius = 5.0
        self.addSubview(progressView)
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.startAnimating()
        activityIndicator.activityIndicatorViewStyle = .Gray
        activityIndicator.center = background.center
        self.addSubview(activityIndicator)
    }

    /// :nodoc:
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
