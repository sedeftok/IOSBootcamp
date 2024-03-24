//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by sedef tok on 22.03.2024.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!

    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        kisilerTableView.dataSource = self
        kisilerTableView.delegate = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Sedef", kisi_tel: "143")
        let k2 = Kisiler(kisi_id: 1, kisi_ad: "İnci", kisi_tel: "1433")
        let k3 = Kisiler(kisi_id: 1, kisi_ad: "Işıl", kisi_tel: "14333")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
    }

    override func viewWillAppear(_ animated: Bool) {
        print("anasayfaya dönüldü")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
}

extension Anasayfa : UISearchBarDelegate { // search barın çalışması için gerekli olan protokolu ekledik
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) { // UISearchBarDelegate protokolünden gelen func
        print("Kişi Ara: \(searchText)")
    }
}

extension Anasayfa : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListesi[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        
        hucre.labelKisiAd.text = kisi.kisi_ad
        hucre.labelKisiTel.text = kisi.kisi_tel
        
        return hucre
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true) // kisi listesinden tıklanan kisinin en son hangisi olduğunu daha koyu renkli olarak gösteriyordu. Bu durumu kaldırmak için yazdık
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { contextualAction,view,bool in
            let kisi = self.kisilerListesi[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel); alert.addAction(iptalAction)

            let evetAction = UIAlertAction(title: "Evet", style: .destructive) { action in
                print("Kişi Sil: \(kisi.kisi_id!)")
            }
            alert.addAction(evetAction)
            
            self.present(alert, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}
