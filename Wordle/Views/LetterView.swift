//
//  LetterView.swift
//  Wordle
//
//  Created by Mei on 25/6/22.
//

import SwiftUI

struct LetterView: View {
    var letter: Letter
    
    var body: some View {
        if (letter.name == ""){
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color(.lightGray), lineWidth: 2)
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
            
        } else {
            Text(letter.name)
                .font(.title)
                .bold()
                .frame(width: 60, height: 60)
                .foregroundColor(letter.foregroundColor)
                .background(letter.backgroundColor)
                .cornerRadius(2)
        }
    }
}

struct LetterView_Previews: PreviewProvider {
    static var previews: some View {
        LetterView(letter: Letter(""))
    }
}
