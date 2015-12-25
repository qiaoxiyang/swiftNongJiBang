//
//  XY_MessageController.swift
//  swiftNongJiBang
//
//  Created by lulei on 15/12/16.
//  Copyright (c) 2015年 xiyang. All rights reserved.
//

import UIKit
@objc(XY_MessageController)
class XY_MessageController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "消息"
        self.navigationController?.tabBarItem.badgeValue = "99+"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
