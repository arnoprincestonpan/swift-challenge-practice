// Palindrome

func isPalindrome(someString: String) -> Bool{
    if (someString.count < 3){
        print("Please enter some String with a count >= 3.")
        return false
    }
    return String(String(someString.reversed())) == String(someString.lowercased())
}

print(isPalindrome(someString: "mom"))
print(isPalindrome(someString: "racecar"))
print(isPalindrome(someString: "cake"))