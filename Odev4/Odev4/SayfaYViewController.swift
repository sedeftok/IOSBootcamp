//
//  SayfaYViewController.swift
//  Odev4
//
//  Created by sedef tok on 22.03.2024.
//

import UIKit

class SayfaYViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func anasayfa(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    

}
