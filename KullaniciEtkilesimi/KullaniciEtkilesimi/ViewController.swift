//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by sedef tok on 21.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Alert: Küçük dikdörtgen olarak ekrana çıkan bir uyarıdır.
    // Action Sheet: Ekranın altından çıkan bir uyarıdır.
    
    

    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ //iptal seçeneğini oluşturma
            action in print("İptal Seçildi")
        }
        alertController.addAction(iptalAction) // oluşturduğumuz iptalAction'ı alert olarak ekleme
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ // tamam seçeneğini oluşturma / destructive kırmızı, cancel mavi görünür.
            action in print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
        
        
    }
        
      
   
    
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet) // alert'in aynısı sadece preferredStyle kısmını actionSheet yaptık
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ //iptal seçeneğini oluşturma
            action in print("İptal Seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ // tamam seçeneğini oluşturma / destructive kırmızı, cancel mavi görünür.
            action in print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        //alertController.addTextField() // yazı girilebilen bir alan oluşturur. Başka özellikler eklemek için aşağıdaki gibi yazılmalıdır.
        alertController.addTextField(){ textField in
            textField.placeholder = "Veri Giriniz"
            textField.keyboardType = .numberPad // sadece sayılar
            textField.isSecureTextEntry = true // yazılan yazının karakterlerini noktalı şekilde gizler.
            
        }
        
        alertController.addTextField()
            
        
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel){ action in // kaydet seçeneğini oluşturma / destructive kırmızı, cancel mavi görünür.
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            
            if let alinanVeri = tf.text, let alinanVeri1 = tf1.text {
                print("Veri: \(alinanVeri) - \(alinanVeri1)")
            }
           
        }
        alertController.addAction(kaydetAction)
        self.present(alertController, animated: true)
    }
    

}
