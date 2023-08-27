import Foundation


//we need var cuz we are mutating the value later in the code
var mydict : [String: String] = [:]

mydict["bozhong"] = "A big winner!"

let extractedVal = mydict.updateValue("Wo Cao Ni Ma", forKey: "bozhong") as! String
print(mydict["bozhong"] ?? "N/A")

