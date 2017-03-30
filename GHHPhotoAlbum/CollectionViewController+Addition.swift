//
//  CollectionViewController+Addition.swift
//  GHHPhotoAlbum
//
//  Created by 高瑞浩 on 2017/2/10.
//  Copyright © 2017年 高瑞浩. All rights reserved.
//

import UIKit
import Photos

extension UIViewController {
    private func authorize(status: PHAuthorizationStatus) -> Bool {
        switch status {
        case .authorized:
            return true
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization({ (status) in
                DispatchQueue.main.async(execute: { 
                    self.authorize(status: status)
                })
            })
        default:
            DispatchQueue.main.async {
                let alertVC = UIAlertController(title:"访问相册受限", message: "点击“设置”，允许访问相册", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
                let settingsAction = UIAlertAction(title: "", style: .default, handler: { (action) in
                    let url = NSURL(string: UIApplicationOpenSettingsURLString)
                    if let url = url as? URL, UIApplication.shared.canOpenURL(url as URL) {
                        UIApplication.shared.openURL(url as URL)
                    }
                })
                
                alertVC.addAction(cancelAction)
                alertVC.addAction(settingsAction)
                self.present(alertVC, animated: true, completion: nil)
            }
            
        }
        return false
    }
}

extension UIView {
    var height: CGFloat {
        set(h) {
            self.frame.size.height = h
        }
        get {
            return self.frame.size.height
        }
    }
    
    var width: CGFloat {
        set(w) {
            self.frame.size.width = w
        }
        get {
            return self.frame.size.height
        }
    }
    
    var originX: CGFloat {
        set(new) {
            self.frame.origin.x = new
        }
        get {
            return self.frame.origin.x
        }
    }
    
    var originY: CGFloat {
        set(new) {
            self.frame.origin.y = new
        }
        get {
            return self.frame.origin.y
        }
    }
    
    
}
