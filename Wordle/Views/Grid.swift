//
//  Grid.swift
//  Wordle
//
//  Created by Mei on 24/6/22.
//

import SwiftUI

struct Grid: View {
    @ObservedObject var vm: ViewModel
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 20)), count: 5)
    
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(0...4, id: \.self) { index in
                ForEach(vm.gameBoard[index], id: \.id) { letter in
                    LetterView(letter: letter)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid(vm: ViewModel())
    }
}
