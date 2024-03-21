//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by sedef tok on 20.03.2024.
//

import UIKit

class AnasayfaVC: UIViewController {
    
    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() { // uygulama ilk açıldığında çalışır ve bir kere çalışır
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
        print("viewDidLoad çalıştı ")
        
    }
    
    override func viewWillAppear(_ animated: Bool) { // sayfa her göründüğünde çalışır, sayfaya geri dönüldüğünde çalışır
        print("viewWillAppear çalıştı ")
    }
    
    override func viewWillDisappear(_ animated: Bool) { // sayfa her görünmez olduğunda çalışır
        print("viewWillDisappear çalıştı ")
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Rüzgar", yas: 23, boy: 1.85, bekar: true)
        
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi) // ID'si yazılan geçişi çalıştırır
    }
    
    @IBAction func buttonYap(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print(" oyunEkraninaGecis çalıştı")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
        
        
    }
    
    
    @IBAction func barButtonItemSave(_ sender: Any) {
        print("save çalıştı")
    }
    
    
    
    @IBAction func barButtonItemAdd(_ sender: Any) {
        print("add çalıştı")
    }
    
    
}

// Navigation Controller: Sayfa geçişlerine yardımcı olan bir yapı. Navigation Bar: nc'nin title kısmı ( nc'nin ekranının üst kısmındaki dikdörtgen)
// Bar Button Item: sağ ve sol üst köşelere eklenen +, geri, çıkış gibi işlemler için kullanılır
// Leading - Left - Start
// Trailing - Right - End
