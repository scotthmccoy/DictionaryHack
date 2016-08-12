//
//  TumblerHacker.swift
//  DictionaryHack
//
//  Created by Scott McCoy on 8/12/16.
//  Copyright © 2016 OpenX. All rights reserved.
//

import Foundation

class TumblerHacker {
    
    let tumblers = [
        ["A", "B", "C", "D", "E", "F", "G"],
        ["A", "B", "C", "D", "E", "F", "G"],
        ["A", "B", "C", "D", "E", "F", "G"],
        ["A", "B", "C", "D", "E", "F", "G"]
    ]
    
    private func getWordsFileContents() -> String {
        let bundle = NSBundle.mainBundle()
        let path = bundle.pathForResource("words", ofType: "txt")!
        let url = NSURL(fileURLWithPath: path)
        let ret = try! String(contentsOfURL: url, encoding: NSUTF8StringEncoding)
        return ret
    }
    
    func getWordsArray() -> [String] {
        let str = self.getWordsFileContents()
        let ret = str.characters.split("\n").map({ String($0) })
        return ret
    }
    
    func getValidWords() -> [String] {
        let words = self.getWordsArray()
        let ret = words.filter({self.wordIsValid($0)})
        return ret
    }
    

    func wordIsValid(word:String) -> Bool {
        
        if word.characters.count != tumblers.count {
            return false
        }
        
        for i in 0..<tumblers.count {
            let char = word[i]
            if (!tumblers[i].contains(String(char))) {
                return false
            }
        }
        
        
        return true
    }
}