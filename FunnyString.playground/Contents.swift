import Cocoa
extension Character {
    var asciiV: Int {
        get {
            let s = String(self).unicodeScalars
            return Int(s[s.startIndex].value)
        }
    }
}
extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}
func isFunny(_ str : String) -> String{
    let S = str
    let R = String(S.reversed())
    let N = S.count
    var i = 1
    /*
     Condition: |s[i] - s[i-1]| = |R[i] - R[i-1]| (ascii value of i-th, 0-indexed character, abs() value is |x|)
     */
    while i<N {
        if (abs((S[i].asciiV - S[i-1].asciiV)) != abs((R[i].asciiV - R[i-1].asciiV))){
            return "Not Funny"
        }
        i += 1
    }
    return "Funny"
}
let a = isFunny("acxz")
let b = isFunny("bcxz")
print(a)
print(b)
