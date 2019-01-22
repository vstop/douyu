//
//  BaseNavigationController.swift
//  douyu
//
//  Created by vstop on 2019/1/22.
//  Copyright © 2019年 zefos. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override var childForStatusBarStyle: UIViewController?{
        return self.topViewController
    }
    override var childForStatusBarHidden: UIViewController?{
        return self.topViewController
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
