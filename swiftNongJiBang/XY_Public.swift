//
//  XY_Public.swift
//  swiftNongJiBang
//
//  Created by lulei on 15/12/17.
//  Copyright (c) 2015年 xiyang. All rights reserved.
//

import UIKit

class XY_Public: NSObject {
   
    class func getImgView(imgName:NSString)->UIImage {
    
        var image : UIImage = UIImage(named: imgName as String)!
        image = image.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        
        return image
    }
    
    
    
}
