// Reverse a String
func reverseString(someString: String) -> String {
    var reversedString = ""
    
    for char in someString{
        reversedString = String(char) + reversedString
    }
    
    return reversedString
}

let name = "Georgia"

print(reverseString(someString: name))

// Reverse a String 2
func reverseString2(someString: String) -> String {
    var charArray = Array(someString)
    var reversedArray : [Character] = []
    for _ in charArray {
        reversedArray.append(charArray.removeLast())
    }
    return String(reversedArray)
}

// Reverse a String 3
func reverseString3(someString: String) -> String {
	return String(someString.reversed())
}