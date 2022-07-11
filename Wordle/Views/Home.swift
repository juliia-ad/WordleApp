//
//  Home.swift
//  Wordle
//
//  Created by Mei on 24/6/22.
//

import SwiftUI

struct Home: View {
    @ObservedObject var vm: ViewModel = ViewModel()
    var body: some View {
        VStack {
            Heading()
            Grid(vm: vm)
            Spacer()
            Keyboard(vm: vm)
        }
        .padding(.bottom)
        .padding(.horizontal, 10)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
