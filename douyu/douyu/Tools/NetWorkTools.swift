//
//  NetWorkTools.swift
//  douyu
//
//  Created by vstop on 2019/1/22.
//  Copyright © 2019年 zefos. All rights reserved.
//

import UIKit

import Alamofire
enum method {
    case post
    case get
}
class NetWorkTools {
    class func netWorkRequest(urlString : String,method : method,parameters : [String : Any]?,callback : @escaping (Dictionary<String,Any>)->()) {
        let methodType = method == .get ? HTTPMethod.get : HTTPMethod.post
        Alamofire.request(urlString, method: methodType, parameters: parameters).responseJSON { (response) in
            
            let result = response.result
            guard let data = result.value else {
                print(result.error!)
                return
            }
            guard let dic = data as? [String : Any] else {
                return
            }
            callback(dic)
            
        }
    }
}
