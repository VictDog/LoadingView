//
//  ViewController.swift
//  LoadingView
//
//  Created by Mac on 2016/10/28.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var loadingView: LoadingView!
    @IBOutlet weak var hideBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let loadingView = LoadingView.showLoadingWithView(view: view)
        self.loadingView = loadingView
    }

    @IBAction func hideLoadingView(_ sender: AnyObject) {
        loadingView.hideLoadingView()
        hideBtn.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

