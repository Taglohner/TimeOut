//
//  TabBarController.swift
//  UITabBarController Programmatically
//
//  Created by Steven Taglohner on 29/01/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeTableViewController = HomeTableViewController()
        homeTableViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 0)
        
        let searchCollectionViewController = SearchCollectionViewController()
        searchCollectionViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        
        let myProfileTableViewContoller = MyProfileTableViewContoller()
        myProfileTableViewContoller.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        
        let viewControllerList = [homeTableViewController, searchCollectionViewController, myProfileTableViewContoller]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
