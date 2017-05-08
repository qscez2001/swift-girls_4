//
//  CodeSegueViewController.swift
//  prepare
//
//  Created by 陳瑀芋 on 2017/5/8.
//  Copyright © 2017年 yuyu. All rights reserved.
//

import UIKit

class CodeSegueViewController: UIViewController {

    //宣告變數
    var vc1:UIViewController!
    var vc2:UIViewController!
    var vc3:UIViewController!


    override func viewDidLoad() {
        super.viewDidLoad()

        //目的地Storyboard
        
        var storyboardA = UIStoryboard(name: "Main", bundle: nil)
        //填上目的地Storyboard ID
        vc1 = storyboardA.instantiateViewController(withIdentifier: "rootvc")
        vc2 = storyboardA.instantiateViewController(withIdentifier: "pushvc")
        vc3 = storyboardA.instantiateViewController(withIdentifier: "presentvc")

    }

    @IBAction func root(_ sender: Any) {
        UIApplication.shared.keyWindow?.rootViewController = vc1
    }
    
    @IBAction func push(_ sender: Any) {
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func present(_ sender: Any) {
        //vc3.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        //vc3.modalPresentationStyle = UIModalPresentationStyle.formSheet
        self.present(vc3, animated:true)
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
