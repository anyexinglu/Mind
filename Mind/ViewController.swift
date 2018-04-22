//
//  ViewController.swift
//  Mind
//
//  Created by Yang,Xiayan on 2018/4/22.
//  Copyright © 2018年 Yang,Xiayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainScrollView: UIScrollView!

    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainScrollView.frame = view.frame

        imageArray = [#imageLiteral(resourceName: "WechatIMG1680.jpeg"), #imageLiteral(resourceName: "WechatIMG1681.jpeg"), #imageLiteral(resourceName: "1.png"), #imageLiteral(resourceName: "2.png")]

        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            // contentMode用来设置图片的显示方式，如居中、居右，是否缩放
            // UIViewContentModeScaleAspectFit会保证图片比例不变，且全部显示在ImageView中，则ImageView会有部分空白。
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

