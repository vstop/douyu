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
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: kScreenW, height: kScreenH))
        imageView.kf_setImage(imageUrl: "http://i2.bvimg.com/664701/ee8b6af18f3c9973.jpg")
        view.addSubview(imageView)
        view.backgroundColor = UIColor.white
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}


