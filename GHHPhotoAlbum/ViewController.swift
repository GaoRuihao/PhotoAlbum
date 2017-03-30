//
//  ViewController.swift
//  GHHPhotoAlbum
//
//  Created by 高瑞浩 on 2017/2/10.
//  Copyright © 2017年 高瑞浩. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // 注册监听
        PHPhotoLibrary.shared().register(self as! PHPhotoLibraryChangeObserver)
    }


}

