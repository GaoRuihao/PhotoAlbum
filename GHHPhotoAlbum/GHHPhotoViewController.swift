//
//  GHHPhotoViewController.swift
//  GHHPhotoAlbum
//
//  Created by 高瑞浩 on 2017/2/13.
//  Copyright © 2017年 高瑞浩. All rights reserved.
//

import UIKit

class GHHPhotoViewController: UIViewController {
    var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "import"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(leftBarItemAction(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(rightBarItemAction(_:)))
        
        let flowlayout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout:flowlayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.fl
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func leftBarItemAction(_ sender: UIBarButtonItem) {
        
    }

    func rightBarItemAction(_ sender: UIBarButtonItem) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
