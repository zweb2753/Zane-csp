//
//  InternetViewController.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController
{
    @IBOutlet weak var webViewer : WKWebView!
    @IBOutlet weak var textView : UILabel!
    var detailAddress : String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    
    var detailText : String?
    {
        didSet
        {
            configureDetailView()
        }
    }

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        configureDetailView()

        // Do any additional setup after loading the view.
    }

    
    private func setup() -> Void
    {
        
    }
    
    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
    

    
    }
}
