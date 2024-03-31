//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by sedef tok on 25.03.2024.
//

import UIKit

class DetaySayfa: UIViewController {

    
    @IBOutlet weak var labelFilm: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            labelFilm.text = f.ad
            imageViewFilm.image = UIImage(named: f.resim!)
            labelFiyat.text = "\(f.fiyat!) ₺"
        }
        
    }
    

    

}
