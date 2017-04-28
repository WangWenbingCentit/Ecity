//
//  UIBarButtonItem.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/28.
//  Copyright © 2017年 Centit. All rights reserved.
//

import Foundation

extension UIBarButtonItem
{
    convenience init(imageName: String, highlightedImage: String = "", size: CGSize = CGSize.zero) {
       
        let btn = UIButton()
        
        
        btn.setImage(UIImage.init(named: imageName), for: UIControlState.normal)
        
        if highlightedImage != "" {
        
            btn.setImage(UIImage.init(named: highlightedImage), for: UIControlState.normal)

            
        }
        
        if size != CGSize.zero {
             btn.frame = CGRect.init(origin: CGPoint.zero, size: size)
        } else
        {
            btn.sizeToFit()
        }
        
        self.init(customView: btn)
    }
}
