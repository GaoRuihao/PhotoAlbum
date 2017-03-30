//
//  AlbumManager.swift
//  GHHPhotoAlbum
//
//  Created by 高瑞浩 on 2017/2/10.
//  Copyright © 2017年 高瑞浩. All rights reserved.
//

import UIKit
import Photos

class AlbumManager: NSObject {
    var items: [GHHImageItem] = [GHHImageItem]()
    
    func getAlbums() {
        let smartOptions = PHFetchOptions()
        let smartAlbums = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .albumRegular, options: smartOptions)
        
        let topLevelUserCollections = PHCollectionList.fetchTopLevelUserCollections(with: nil)
        
        
        
    }
    
    private func convertCollection(collection:PHFetchResult<AnyObject>) {
        for i in 0..<collection.count {
            let resultOptions = PHFetchOptions()
            resultOptions.sortDescriptors = [NSSortDescriptor(key: "", ascending: false)]
            resultOptions.predicate = NSPredicate(format: "mediaType = %d", PHAssetMediaType.image.rawValue)
            guard let c = collection[i] as? PHAssetCollection else { return }
            let assetsFetchResult = PHAsset.fetchAssets(in: c , options: resultOptions)
            if assetsFetchResult.count > 0{
                items.append(GHHImageItem(title: c.localizedTitle, fetchResult: assetsFetchResult as! PHFetchResult<AnyObject>))
            }
        }
    }
}
