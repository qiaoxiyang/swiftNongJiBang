//
//  XY_MainTabBarController.swift
//  swiftNongJiBang
//
//  Created by lulei on 15/12/17.
//  Copyright (c) 2015年 xiyang. All rights reserved.
//

import UIKit

class XY_MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    class func CustomTabBar()->UITabBarController {
    
        let viewControllerArray = ["XY_MessageController","XY_ContactListController","XY_HomeController","XY_DiscoverController","XY_MineController"]
        let tabBarVC = XY_MainTabBarController()
        
        let tabbarArray = ["message","mail","home","discover","mine"]
        var index:Int = 0
        //循环像tabbarcontroller中添加对应的子控制器
        for str in viewControllerArray{
           
            let vc = NSClassFromString(str) as UIViewController.Type
            //获取到对应的控制器类
            let viewcontroller = vc.self.init()
            //创建导航控制器
            let nav : UINavigationController = XY_NaviController(rootViewController: viewcontroller)
            tabBarVC.addChildViewController(nav)
            //设置对应的tabbaritem
            let normalStr:String = tabbarArray[index]
            let selectStr:String = normalStr+"_pre"
            nav.tabBarItem = UITabBarItem(title: nil, image: XY_Public.getImgView(normalStr), selectedImage: XY_Public.getImgView(selectStr))
            //调整对应tabbaritem的位置，制作成不规则的tabbar
            if index==2{
                nav.tabBarItem.imageInsets = UIEdgeInsetsMake(-9, 0, 9, 0)
            }else{
                nav.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -10, 0)
            }
            
            index++
        }
        //设置tabbar的背景
        tabBarVC.tabBar.translucent=false
        tabBarVC.tabBar.barStyle = .Black
        tabBarVC.tabBar.barTintColor = UIColor(patternImage: UIImage(named: "Main_tabBar_background")!)
        
        tabBarVC.tabBar.backgroundImage = UIImage(named: "Main_tabBar_background")
        return tabBarVC
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
