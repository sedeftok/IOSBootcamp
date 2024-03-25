//
//  Urunler.swift
//  UrunlerApp
//
//  Created by sedef tok on 25.03.2024.
//

import Foundation

class Urunler {
    var id:Int?
    var ad:String?
    var resim:String?
    var fiyat:Int?
    
    init(){
        
    }
    
    init(id: Int? = nil, ad: String? = nil, resim: String? = nil, fiyat: Int? = nil) {
        self.id = id
        self.ad = ad
        self.resim = resim
        self.fiyat = fiyat
    }
}
