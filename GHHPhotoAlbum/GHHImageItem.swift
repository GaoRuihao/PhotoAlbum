//
//  GHHImageItem.swift
//  GHHPhotoAlbum
//
//  Created by 高瑞浩 on 2017/2/13.
//  Copyright © 2017年 高瑞浩. All rights reserved.
//

import UIKit
import Photos

class GHHImageItem {
    var fetchResult:PHFetchResult<AnyObject>
    var title:String?
    
    init(title:String?,fetchResult:PHFetchResult<AnyObject>){
        self.title = title
        self.fetchResult = fetchResult
    }
}
