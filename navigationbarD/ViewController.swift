//
//  ViewController.swift
//  navigationbarD
//
//  Created by idea on 2017/10/21.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//跳转到第二级页面
    @IBAction func BtnCli(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let vc = sb.instantiateViewController(withIdentifier: "SV") as! SViewController
        self.navigationController?.pushViewController(vc, animated: true)
 
    }
    var navigationbar : UINavigationBar?
    override func viewDidLoad() {
        super.viewDidLoad()
        //关闭导航栏半透明效果
        self.navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

