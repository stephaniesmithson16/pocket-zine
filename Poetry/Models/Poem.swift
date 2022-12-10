//
//  Poem.swift
//  Poetry
//
//  Created by Stephanie Smithson on 8/12/22.
//

import Foundation

class Poem:Identifiable, Decodable {
    
    var id:UUID?
    var poet=""
    var title=""
    var body=[String]()
    var image=""
    
}
