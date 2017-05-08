//
//  GifViewController.swift
//  prepare
//
//  Created by 陳瑀芋 on 2017/5/8.
//  Copyright © 2017年 yuyu. All rights reserved.
//

import UIKit

class GifViewController: UIViewController {

    @IBOutlet weak var gif_image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //設置圖片矩陣
        var imageArray:[UIImage] = []
        
        
        //for-in loop 把全部圖片放到array內
        for i in 1...4{
            
            imageArray.append(UIImage(named:"ppap_0\(i)")! )
            
        }
        
        //動畫Image的動畫圖片是圖片矩陣
        gif_image.animationImages = imageArray
        //動畫Image的動畫時長
        gif_image.animationDuration = 2
        //動畫Image開始
        gif_image.startAnimating()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
