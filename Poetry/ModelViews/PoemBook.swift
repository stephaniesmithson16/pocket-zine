//
//  PoemBook.swift
//  Poetry
//
//  Created by Stephanie Smithson on 8/12/22.
//

import Foundation

class PoemBook: ObservableObject {
    @Published var poems = [Poem]()
    
    init() {
        poems = PoemDataService.getData()
    }
}
