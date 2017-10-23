//
//  BaseViewController.swift
//  navigationbarD
//
//  Created by idea on 2017/10/23.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UIGestureRecognizerDelegate {
//    property (strong) UIViewController: viewController
    override func viewDidLoad() {
        super.viewDidLoad()
//        自定义全屏滑动返回
        let target = self.navigationController?.interactivePopGestureRecognizer!.delegate
        let pan = UIPanGestureRecognizer(target:target,action:Selector(("handleNavigationTransition:")))
        pan.delegate = self
        self.view.addGestureRecognizer(pan)
        //同时禁用系统原先的侧滑返回功能
        self.navigationController?.interactivePopGestureRecognizer!.isEnabled = false

        // Do any additional setup after loading the view.
    }
//返回上一界面
    func returnBtn()  {
         self.navigationController?.popViewController(animated: false)
    }
//    用代码控制sb的跳转，传入sb名和sb中跳转的下一界面所对应的ID
    func GoPageBtn(SBname: String, SBid: String) -> UIViewController {
        let sb = UIStoryboard(name: SBname, bundle:nil)
        let vc = sb.instantiateViewController(withIdentifier: SBid)
      return vc
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
