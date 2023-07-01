// Make a Name : Country Dictionary for International Students
let studentCountry : [String : String] = ["Arnold" : "Austria", "Jensen" : "Taiwan", "Michael" : "U.S.A", "Jim" : "Canada", "Jenny" : "Korea"]

let giveCountry = { (someName : String) -> String in 
    return "\(someName) is from \(studentCountry[someName]!)."
}

let name = "Arnold"
let country = giveCountry(name)

print(country)
