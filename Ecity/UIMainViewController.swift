//
//  UIMainViewController.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit

class UIMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let projectListVC = UIProjectListViewController()
        let projectListNav = UINavigationController.init(rootViewController: projectListVC)
        projectListNav.tabBarItem.title = "项目"
        projectListNav.tabBarItem.image = UIImage.init(named: "bottom_project")
        
        let workVC = UIWorkViewController()
        let workNav = UINavigationController.init(rootViewController: workVC)
        workNav.tabBarItem.image = UIImage.init(named: "bottom_work")
        workNav.tabBarItem.title = "工作"
        
        let viewControllersArray = [projectListNav,workNav]
        self.viewControllers = viewControllersArray
        
        //NSLocalizedString(<#T##key: String##String#>, comment: <#T##String#>) 本地化
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initialSetup() {
    
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
