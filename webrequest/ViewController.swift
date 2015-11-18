//
//  ViewController.swift
//  webrequest
//
//  Created by Jeffrey Cho on 11/12/15.
//  Copyright © 2015 personal. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
    }
    
    override func viewDidAppear(animated: Bool) {
    let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
    webView.frame = frame
        
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadRequest (urlStr: String) {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.steak-enthusiast.com")
    }
    
    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com")
    }
    
}

