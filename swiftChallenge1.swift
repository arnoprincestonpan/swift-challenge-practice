// Singular or Plural
func singleOrPlural(someString : String) -> Bool{
    if(String(someString.lowercased().suffix(1)) == "s"){
    return true
    }
    return false
}


func singleOrPlural2(someString: String) -> Bool{
    return someString.lowercased().hasSuffix("s")
}

print(singleOrPlural2(someString: "kitties"))