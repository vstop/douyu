//
//  UIImageViewExtension.swift
//  douyu
//
//  Created by vstop on 2019/1/22.
//  Copyright © 2019年 zefos. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    func kf_setImage(imageUrl : String) {
        let url = URL(string: imageUrl)
        self.kf.setImage(with: url)
    }
}
