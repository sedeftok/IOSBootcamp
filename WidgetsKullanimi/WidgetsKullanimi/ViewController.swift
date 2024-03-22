//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by sedef tok on 22.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        
        indicator.isHidden = true // gizleme için
    }

    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "Happy")
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "Sad")
    }
   
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("switch: on")
        }else {
            print("switch: off")
        }
        
    }
    
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(Int(stepper.value))
        
    }
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durumu: \(mSwitch.isOn)")
        
        let secilenIndex = segmentedController.selectedSegmentIndex
        let secilenKategori = segmentedController.titleForSegment(at: secilenIndex)
        print("Segmented Durumu: \(secilenIndex)")
        
        
        labelSlider.text = String(slider.value)
        print("Slider Durumu: \(slider.value)")
        
        labelStepper.text = String(stepper.value)
        print("Stepper Durumu: \(stepper.value)")
        
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl){
        let secilenIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndex)
        print("seçim: \(secilenIndex)")
    }
    
    
}

