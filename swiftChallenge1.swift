// Singular or Plural
func singleOrPlural(someString : String) -> Bool{
    if(String(someString.lowercased().suffix(1)) == "s"){
    return true
    }
    return false
}

