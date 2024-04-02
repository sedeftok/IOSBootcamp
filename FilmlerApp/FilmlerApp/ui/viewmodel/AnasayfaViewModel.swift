//
//  AnasayfaViewModel.swift
//  FilmlerApp
//
//  Created by sedef tok on 2.04.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var frepo = FilmlerDaoRepository()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    init(){
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    func filmleriYukle(){
        frepo.filmleriYukle()
    }
}
