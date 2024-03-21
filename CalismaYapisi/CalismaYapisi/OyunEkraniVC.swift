//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by sedef tok on 20.03.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?
    
    @IBOutlet weak var labelOyunEkrani: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            print("--------OyunEkraniVC---------")
            print("Kişi ad: \(k.ad!)")
            print("Kişi yaş: \(k.yas!)")
            print("Kişi boy: \(k.boy!)")
            print("Kişi bekar mı: \(k.bekar!)")
            
        }
        
    }
    
    
    @IBAction func buttonGeri(_ sender: Any) {
        
        // navigationController?.popViewController(animated: true) // bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) // Anasayfaya dönüş
    }
    
    
    @IBAction func buttonBitir(_ sender: Any) {
        
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil) // ismi yazılan geçişi çalıştırır
    }
    
    
    
}


