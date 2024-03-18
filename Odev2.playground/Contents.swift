import UIKit

/*
 Sorular
 1. parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren metodu yazınız. (mil = km *0.621)
 2. kenarları parametre olarak girilen ve dikdörtgenin alanını hesaplayan metodu yazınız.
 3. parametre olarak girilen sayının faktöriyel değerini hesaplayıp geri döndüren metodu yazınız.
 4. parametre olarak girilen kelime içinde kaç adet e harfi olduğunu gösteren metodu yazınız.
 5. parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri döndüren metodu yazınız. ( iç açılar toplamı = ((kenar sayısı - 2) * 180) / kenar sayısı
 6. parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
  - 1 günde 8 saat çalışabilir
  - çalışma saati ücreti: 40 tl
  - mesai saat ücreti : 80 tl
  - 150 saat üzeri mesai sayılır
  7. parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yazınız.
  - 1 saat = 50 tl
  - 1 saat aşımından sonra her 1 saat 10 tl
  */


class Odev2 {
    
    func kmToMile (km:Double) -> Double {
        let mil = km * 0.621
        return mil
    }
    
    func alanHesabi (kk:Double, uk:Double) {
        var alan = kk * uk
        print(alan)
    }
    
    func faktoriyel (sayi:Int) -> Int {
        var sonuc = 1
        if sayi == 0 {
            return 1
        }else {
            for i in 1...sayi {
                sonuc *= i
            }
            return sonuc
        }
        
    }
    
    func eHarfiSayisi (kelime:String) {
        return
        
    }
    
    func icAci (kenarSayisi:Int) -> Int{
        if (kenarSayisi >= 3) {
            var icAci = ((kenarSayisi - 2) * 180) / kenarSayisi
            return icAci
        }else {
            print("kenar sayısı en az 3 olmalıdır")
            return 0
        }
    }
    
    func maasHesabi (gun:Int) -> Int {
        var maas = 0
        if (gun * 8 > 150) {
            var mesaiSaati = (gun * 8) - 150
            maas = (mesaiSaati * 80) + (150 * 40)
        }else {
            maas = gun * 8 * 40
        }
        
        return maas
    }
    
    func otoparkUcret (saat:Int) -> Int{
        var ucret = 0
        if (saat == 1){
            return 50
        }else if( saat == 0) {
            return 0
        }else{
            ucret = ((saat - 1) * 10) + 50
            return ucret
        }
        
    }
    
}
var s = Odev2()

var milSonuc = s.kmToMile(km: 1000)
print(milSonuc)

var faktoriyelSonuc = s.faktoriyel(sayi: 4)
print("girilen sayının faktoriyeli : \(faktoriyelSonuc)")

var icAciSonuc = s.icAci(kenarSayisi: 4)
print("şeklin bir iç açısı         : \(icAciSonuc) derecedir")

var maasSonuc = s.maasHesabi(gun:0)
print("maaş miktarı                : \(maasSonuc)")

var otoparkSonuc = s.otoparkUcret(saat: 0)
print("otopark ücretiniz           : \(otoparkSonuc)")
