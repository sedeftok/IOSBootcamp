import UIKit

// Kalıtım   : Bir sınıfın başka bir sınıfa özellik aktarması (özelliği aktaran sağa yazılır)
// superclass: Miras aldığımız üst sınıfımız
// subclass  : Miras verdiğimiz alt sınıfımız

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Villa : Ev { // ev özelliklerini villaya aktarmış oldun yani artık evin tüm özelliklerine villa erişebilir
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi) // saraydaki gibi kendimiz de değer atayabiliriz ya da pencereSayisi değişkeni oluşturup kullanıcıya bırakırız
    }
}

class Saray: Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: 10) // ev bizim superclassımız super yazdığımızda da altta çıkıyor "super : Ev" diye
    }
}

let topkapiSarayi = Saray(kuleSayisi: 5)
let bogazVillasi = Villa(garajVarMi: true, pencereSayisi: 30)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVillasi.garajVarMi!, bogazVillasi.pencereSayisi!)

// Override :kalıtım olmalı ve fonksiyon alt classlarda tekrar tekrar kullanılır (overloadingle farklı onda kalıtım yok)


class Hayvan {
    func sesCikar() {
        print("sesim yok")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCikar() {
        print("miyav")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() // kalıtım yok. Kendi fonksiyonunu çalıştırdı
memeli.sesCikar() // kalıtım var. Üst sınıfın fonksiyonunu çalıştırdı
kedi.sesCikar() // kalıtım var. Kendi metodlarını kullanıyorlar
kopek.sesCikar()// kalıtım var. Kendi metodlarını kullanıyorlar

//Tür Dönüşümü  (downcasting - upcasting)

/* bir subclass ı superclass a dönüştüreceksek upcasting ( saray bir evdir - aşağıdan yukarıya) as ile
 bir superclass ı subclass a dönüştüreceksek downcasting ( ev bir villa mıdır? - yukarıdan aşağıya) as!, as? ile
 */

// upcasting
// var ev = Saray(kuleSayisi: 3) as Ev / saray as ev - up

// Downcasting
// var saray = Ev(pencereSayisi: 6) as? / saray as? ev - down

/* Tip Kontrolü
if ev is Ev {
    print("Nesne ev sınıfındandır.")
}else {
    print("Nesne ev sınıfından değildir.")
}
yukarıdaki gibi kullanılır. */



/* PROTOCOL
 Bir class birden fazla protocol alabilir
 Kendi özelliklerini class a eklemek zorundasın
 : ile eklenir
 Hazır taslaklar gibi düşünebilirsiniz
 Protocoller sınıflara özellik katar
 
 ornek:
 class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { } */

protocol MyProtocol {
    var degisken:Int {get set}
    
    func metod1()
    func metod2() -> String
    
    }

class ClassA : MyProtocol { // ! comfort to protocol uyarısı gelirse kullanılması gereken tüm protokoller kullanılmadığı içindir
    var degisken: Int = 10
    
    func metod1() {
        print("metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "metod 2 çalıştı"
    }
}

var a = ClassA()

print(a.degisken)

a.metod1()

print(a.metod2())

// extension - genişletme - istediğimiz class a yeni özellikler ekleyebiliriz örneğin int için

extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi
    }
}

let x = 3.carp(sayi: 5)
print(x)


// closure
let ifade = {
    print("merhaba")
}

ifade()
