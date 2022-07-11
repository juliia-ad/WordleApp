//
//  Model.swift
//  Wordle
//
//  Created by Mei on 24/6/22.
//

import Foundation
import SwiftUI

enum State {
    case basic
    case match
    case appear
    case dontAppear
}

struct Letter: Hashable {
    var id: String = UUID().uuidString
    var name: String
    var state: State
    
    var foregroundColor: Color {
        switch state {
        case .basic:
                return .black
        default:
                return .white
        }
    }
    
    var backgroundColor: Color {
        switch state {
        case .basic:
            return Color(red: 213.0/255, green: 216.0/255, blue: 222.0/255)
        case .match:
            return Color(red: 109.0/255, green: 169.0/255, blue: 103.0/255)
        case .appear:
            return Color(red: 201.0/255, green: 180.0/255, blue: 87.0/255)
        case .dontAppear:
            return Color(red: 120.0/255, green: 124.0/255, blue: 127.0/255)
        }
    }
    
    init(_ name: String){
        self.name = name
        self.state = .basic
    }
    
    mutating func setLetter(_ name: String){
        self.name = name
    }
    
    mutating func setMatch(){
        self.state = .match
    }
    
    mutating func setAppear(){
        self.state = .appear
    }
}

var kb: [Letter] = [.init("Q"), .init("W"), .init("E"), .init("R"), .init("T"), .init("Y"), .init("U"), .init("I"), .init("O"), .init("P"),
                    .init("A"), .init("S"), .init("D"), .init("F"), .init("G"), .init("H"), .init("J"), .init("K"), .init("L"), .init(""),
                    .init("enter"), .init("Z"), .init("X"), .init("C"), .init("V"), .init("B"), .init("N"), .init("M"), .init("delete")
]
//var keyboard2: [Letter] = [.init("A"), .init("S"), .init("D"), .init("F"), .init("G"), .init("H"), .init("J"), .init("K"), .init("L")]
//var keyboard3: [Letter] = [.init("Z"), .init("X"), .init("C"), .init("V"), .init("B"), .init("N"), .init("M"), .init("delete")]


//Extensions

extension Color {
    public static let lightGray = Color(red: 213.0/255, green: 216.0/255, blue: 222.0/255)
}

