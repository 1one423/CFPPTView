//
//  ViewController.swift
//  CFPPTView
//
//  Created by 成林 on 15/6/21.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        //创建SwiftPPT
        var pptView: CFPPTView = CFPPTView(type: PPTType.local) { () -> [PPTDataModel] in
            
            var localImages = [UIImage(named: "local1"),UIImage(named: "local2"),UIImage(named: "local3"),UIImage(named: "local4")]
            
            var localTitleStr = ["本地幻灯：花千骨剧照一","本地幻灯：花千骨剧照二","本地幻灯：花千骨剧照三","本地幻灯：花千骨剧照四"]
            
            var dataModels: [PPTDataModel] = Array()
            
            for i in 0..<localImages.count {
                
                var dataModel = PPTDataModel(localImage: localImages[i]!, titleStr: localTitleStr[i])
            
                dataModels.append(dataModel)
        
            }
            
            return dataModels
        }
        pptView.frame = CGRectMake(0, 80, Screen.width, 160)
        
        self.view.addSubview(pptView)
        
        pptView.clickImageV = {(index: Int, pptDataModel: PPTDataModel) -> Void in
            
            println(index)
        }
        
        //网络相册：
        //创建SwiftPPT
        var pptView2 = CFPPTView(type: PPTType.netWork) { () -> [PPTDataModel] in
            
            var networkImages = ["http://img.netbian.com/file/2015/0619/e8ffa0a298a4f7374df0e599c4fa134d.jpg","http://img.netbian.com/file/20150319/0a176c7518b4b1e9041bb4ada0899160.jpg","http://img.netbian.com/file/20150114/96e7591ea70c43b06c47503a9d31c2f6.jpg","http://img.netbian.com/file/20141129/35b2d754f2eec0a41381115ccf46c2f4.jpg","http://img.netbian.com/file/20140511/2f42b589066cb7baba9f8a3ab820dd45.jpg"]
            
            var networkTitleStr = ["网络幻灯:小黄人一","网络幻灯:小黄人","网络幻灯:小黄人三","网络幻灯:小黄人四","网络幻灯:小黄人五"]
            
            var dataModels: [PPTDataModel] = Array()
            
            for i in 0..<networkImages.count {
                
                var dataModel = PPTDataModel(networkImageUrl: networkImages[i], placeHolderImage: nil, titleStr: networkTitleStr[i],model: nil)
                dataModels.append(dataModel)
            }
            
            return dataModels
        }
        
        pptView2.frame = CGRectMake(0, 260, Screen.width, 160)
        
        self.view.addSubview(pptView2)
        
      
        
    }


}

