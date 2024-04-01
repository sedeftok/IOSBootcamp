//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by sedef tok on 1.04.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    init(){
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
    }
    
    func sil(kisi_id:Int){
        print("Kişi Sil: \(kisi_id)")
    }
    
    func ara(aramaKelimesi:String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}
