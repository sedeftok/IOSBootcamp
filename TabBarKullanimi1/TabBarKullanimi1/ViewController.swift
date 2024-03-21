//
//  ViewController.swift
//  TabBarKullanimi1
//
//  Created by sedef tok on 21.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let tabItems = tabBarController?.tabBar.items { // tab bardaki uyarı işaretlerinin belirlemek için kullanılır
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "yeni"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    func renkDegistir(itemAppearance:UITabBarItemAppearance) {
        // seçili durum
        itemAppearance.selected.iconColor = UIColor.systemOrange // ikon rengi
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange] // ikonun yazısının rengi
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint // uyarının rengi
        
        // seçili olmayan durum
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }


}

