//
//  SViewController.swift
//  navigationbarD
//
//  Created by idea on 2017/10/21.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class SViewController: BaseViewController {

    @IBAction func leftbtn(_ sender: Any) {
        returnBtn()
        //返回到上一个页面
//        self.presentingViewController!.dismiss(animated: true, completion: nil)
    }
//    跳转到第三级页面
    @IBAction func goBtn(_ sender: Any) {
        let vc = GoPageBtn(SBname: "Main", SBid: "TV") as! TViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {

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
