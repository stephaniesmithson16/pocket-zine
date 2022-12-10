//
//  PoemDataService.swift
//  Poetry
//
//  Created by Stephanie Smithson on 8/12/22.
//

import Foundation

class PoemDataService {
    
    static func getData() -> [Poem] {
        
        // Find Data
        let stringPath = Bundle.main.path(forResource: "poems", ofType: "json")
        
        guard stringPath != nil else {
            return [Poem]()
        }
        
        if let path = stringPath {
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data.init(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    let poemData = try decoder.decode([Poem].self, from: data)
                    
                    for poem in poemData {
                        poem.id = UUID()
                    }
                    
                    return poemData
                }
                catch {
                    print(error)
                }
            }
            catch {
                print(error)
            }
        }
        
        
        
        return [Poem]()
    }
}
