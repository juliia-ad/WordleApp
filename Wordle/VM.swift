//
//  VM.swift
//  Wordle
//
//  Created by Mei on 24/6/22.
//

import Foundation

class ViewModel: ObservableObject {
    var row: Int = 0
    var index: Int = 0
    var word: String
    var currentWord: String = ""
    @Published var gameBoard: [[Letter]] = [
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")]
    ]
    
    init(){
        word = "HELLO"
    }
    
    func addLetter(letter: Letter){
        if (index < 5){
            currentWord.append(contentsOf: letter.name)
            gameBoard[row][index].setLetter(letter.name)
            index += 1
        }
    }
    
    func enterWord(){
        if (word.count == 5){
            checkWord()
            row += 1
            index = 0
            currentWord = ""
        }
    }
    
    func deleteLetter(){
        if (!currentWord.isEmpty){
            currentWord.removeLast()
            gameBoard[row][index].setLetter("")
            index -= 1
        }
    }
    
    
    func checkWord(){
        let wordArray = Array(word)
        let currentWordArray = Array(currentWord)
        
        for i in 0..<5 {    //bucle currentword
            var matched = false
            var j = 0
            while (!matched && j < 5){
                if (currentWordArray[i] == wordArray[j]) {
                    if (i == j) {
                        gameBoard[row][i].setMatch()
                        matched = true
                    } else {
                        gameBoard[row][i].setAppear()
                    }
                }
                j += 1
            }
        }
    }
    
}


/*
 Para cada letra, comprobar si está en la palabra
 Si index == posicion -> verde
 si index != posicion -> amarillo
 
 
 */
