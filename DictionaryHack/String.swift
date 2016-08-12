//
//  String.swift
//  DictionaryHack
//
//  Created by Scott McCoy on 8/12/16.
//  Copyright © 2016 OpenX. All rights reserved.
//

import Foundation

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
}