//
//  SonucEkraniVC.swift
//  CalismaYapisi
//
//  Created by sedef tok on 20.03.2024.
//

import UIKit

class SonucEkraniVC: UIViewController {

    @IBOutlet weak var labelSonucEkrani: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonKapat(_ sender: Any) {
        self.dismiss(animated: true) // kendi olduğu sayfayı kapatır
    }
   

}
