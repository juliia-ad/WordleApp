//
//  Keyboard.swift
//  Wordle
//
//  Created by Mei on 24/6/22.
//

import SwiftUI

struct Keyboard: View {
    @ObservedObject var vm: ViewModel
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 20)), count: 10)
    
    var body: some View {
            LazyVGrid(columns: columns) {
                ForEach(kb, id: \.id) { letter in
                    Group {
                        if (letter.name == "delete"){
                            Button {
                                vm.deleteLetter()
                            } label: {
                                Image(systemName: "delete.backward")
                            }
                        } else if (letter.name == "enter"){
                            Button {
                                vm.enterWord()
                            } label: {
                                Image(systemName: "paperplane")
                            }
                        } else {
                            Button {
                                vm.addLetter(letter: letter)
                            } label: {
                                Text(letter.name)
                            }
                            
                        }
                    }
                    .frame(width: 34, height: 40)
                    .foregroundColor(letter.foregroundColor)
                    .background(letter.backgroundColor)
                    .cornerRadius(8)
                }
            }
        
        
        
       /* GeometryReader { proxy in
            HStack(spacing: 1) {
                ForEach(kb, id: \.id) { letter in
                    Group {
                        if (letter.name == "delete"){
                            Image(systemName: "delete.backward")
                        } else if (letter.name == "enter"){
                            Image(systemName: "paperline.fill")
                        }
                        else {
                        Text(letter.name)
                        }
                    }
                    .frame(width: proxy.size.width / CGFloat(kb.count), height: 40)
                    .foregroundColor(letter.foregroundColor)
                    .background(letter.backgroundColor)
                    .cornerRadius(8)
                    
                }
            }
        }*/
        
    }
}


struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard(vm: ViewModel())
            .previewInterfaceOrientation(.portrait)
    }
}

