//
//  ReverseWords.swift
//  TempTracker
//
//  Created by Megan Mackay on 4/22/22.
//

import Foundation


extension ViewController {
    
    // Example: var messageArray: [Character] = ["c", "a", "k", "e", " ", "p", "o", "u", "n", "d", " ", "s", "t", "e", "a", "l"]
    func reverseWords(message: inout [Character]) {
        // Take message and reverse the order of the words, separated by " "
        // ['c', 'a', 'k', 'e', ' ', 'p', 'o', 'u', 'n', 'd', ' ', 's', 't', 'e', 'a', 'l']
        // reverseWords(&message)
        // Result should be "steal pound cake" after join
        
        guard message.count != 0 else { return }
        
        // Reverse all characters
        reverseChars(&message, from: 0, to: message.count - 1)
        // Current result "laets dnuop ekac"
        
        // Unscramble each word
        var wordStartIndex = 0
        var wordEndIndex: Int?
        while wordStartIndex < message.count {
            var checkEndIndex = wordStartIndex
            while wordEndIndex == nil {
                if checkEndIndex == message.count - 1 || message[checkEndIndex + 1] == " " {
                    wordEndIndex = checkEndIndex
                } else {
                    checkEndIndex += 1
                }
            }
            reverseChars(&message, from: wordStartIndex, to: wordEndIndex!)
            // Go to next word
            wordStartIndex = wordEndIndex! + 2
            wordEndIndex = nil
        }
        
        // Finished unscrambling
    }
    
    // Helper function to reverse chars
    func reverseChars(_ chars: inout [Character], from startIndex: Int, to endIndex: Int) {
        guard chars.count != 0 else {return}
        
        var firstIndex = startIndex
        var secondIndex = endIndex
        while firstIndex < secondIndex {
            let firstChar = chars[firstIndex]
            let secondChar = chars[secondIndex]
            chars[firstIndex] = secondChar
            chars[secondIndex] = firstChar
            firstIndex += 1
            secondIndex -= 1
        }
    }
    
}
