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
    var detailAddress : String?
    {
        didSet
        {
            configureDetaiView()
        }
    }
    
    var detailAddress : String?
    }

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        configureDetailView()

        // Do any additional setup after loading the view.
    }

    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewr
            {
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!))
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: "https://www.cnn.com")
                urrentWebView.load(URLRequest(url:currentURL!))
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
    private func setup() -> Void
    {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
