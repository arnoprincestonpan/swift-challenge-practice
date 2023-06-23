// Isogram Checker
func isIsogram(someString: String) -> Bool{
    var someSet : Set<Character> = [:]
    for char in someString{
        if(!someSet.contains(char)){
            someSet.insert(char)
        } else {
            return true
        }
    }
    return false
}

let aString = "today"
let bString = "tomorrow"

print(isIsogram(aString))
print(isIsogram(bString))