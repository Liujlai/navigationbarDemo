//
//  TViewController.swift
//  navigationbarD
//
//  Created by idea on 2017/10/23.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class TViewController: BaseViewController {

//    返回上一界面
    @IBAction func reBtn(_ sender: Any) {
      returnBtn()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
