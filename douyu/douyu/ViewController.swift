//
//  ViewController.swift
//  douyu
//
//  Created by vstop on 2019/1/11.
//  Copyright © 2019年 zefos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = "http://httpbin.org/post"
        NetWorkTools.netWorkRequest(urlString: url, method: .post, parameters: ["name" : "zefos"]) { (dic) in
            print(dic)
        }
        view.backgroundColor = UIColor.white
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}


