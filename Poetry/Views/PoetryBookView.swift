//
//  ContentView.swift
//  Poetry
//
//  Created by Stephanie Smithson on 8/12/22.
//

import SwiftUI

struct PoetryBookView: View {
    @ObservedObject var poemBook = PoemBook()
    
    var body: some View {
        NavigationView {
            List(poemBook.poems, id: \.id) { poem in
                NavigationLink(destination: {
                    PoemView(poem: poem.self)
                }, label: {
                    ZStack {
                        Image(poem.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300)
                        VStack {
                            Spacer()
                            HStack{
                                Spacer()
                                Text(poem.poet).fontWeight(.heavy).foregroundColor(Color.white).padding(.trailing, 20).font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            }
                        }.padding(.bottom, 10)
                    }
                })
            }.navigationTitle("Poets").font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PoetryBookView()
    }
}
