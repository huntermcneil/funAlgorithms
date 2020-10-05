import UIKit

var sampleSentence = "I will be a great programmer if I practice every day!"

func reverseWordsInSentence(sentence: String) -> String {
    let allWords = sampleSentence.components(separatedBy: String(" "))
    var newSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 1 {
            let reverseWord = String(word.reversed())
            newSentence += reverseWord
        } else {
            newSentence += word
        }
    }
    return newSentence
}

print(reverseWordsInSentence(sentence: sampleSentence))
