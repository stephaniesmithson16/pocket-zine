//
//  PoemView.swift
//  Poetry
//
//  Created by Stephanie Smithson on 8/12/22.   
//

import SwiftUI

struct PoemView: View {
    let poem:Poem
    
    var body: some View {
        
        VStack {
            ScrollView {
                VStack {
                    Text("By " + poem.poet + "\n")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                    ForEach(poem.body, id: \.self) { line in
                        HStack {
                            Text(line)
                                .multilineTextAlignment(.leading)
                                .aspectRatio(1.0, contentMode: .fill)
                            Spacer()
                        }
                    }.padding(.horizontal, 10)
                }
            }.navigationTitle(poem.title)
        }
    }
}

struct PoemView_Previews: PreviewProvider {
    
    static var previews: some View {
        let book = PoemBook()
        PoemView(poem: book.poems[2])
    }
}
