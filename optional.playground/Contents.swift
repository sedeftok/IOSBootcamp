import UIKit
// optional = nullable = null safety
// tanımlama
var mesaj =  "merhaba"

// null,nil
var str:String? = nil // soru işareti demek bu str nil olabilir demek

str = "merhaba"
if str != nil {
    print(str!) // soru iaşreti koymak yani (unwrap) yapmazsak çıktıda optinal("  ") şeklinde gösterir
}else{
    print("str nil değer içeriyor")
}


// optional binding

if let temp = str {
    print(temp )// otomatik unwrap
}else{
    print("str nil değer içeriyor")
}
