//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by sedef tok on 20.03.2024.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
        
    }


    
    
    @IBAction func buttonBasla(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
        
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonYap(_ sender: Any) {
    }
    
}

