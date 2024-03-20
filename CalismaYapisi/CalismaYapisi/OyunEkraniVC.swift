//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by sedef tok on 20.03.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {

    @IBOutlet weak var labelOyunEkrani: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func buttonBitir(_ sender: Any) {
        
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        
         // navigationController?.popViewController(animated: true) // bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) // Anasayfaya dönüş
    }
    
    
    
    
    

}
