//
//  Heading.swift
//  Wordle
//
//  Created by Mei on 24/6/22.
//

import SwiftUI

struct Heading: View {
    var body: some View {
        VStack {
            ZStack {
                    HStack {
                        Button {
                            //
                        } label: {
                            Image(systemName: "questionmark.circle.fill")
                        }
                        .frame(width: 40, height: 35)

                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "chart.bar.xaxis")
                        }
                        .frame(width: 40, height: 35)

                        Button {
                            //
                        } label: {
                            Image(systemName: "gearshape.fill")
                        }
                        .frame(width: 40, height: 35)
                    }
                    .foregroundColor(.gray)
                    
                
                Button {
                    //
                } label: {
                    Text("")
                }
                .frame(width: 200, height: 40)
                
                HStack(spacing: 18){
                    Text("WORDLE")
                        .font(.title)
                        .bold()
                    Image(systemName: "chevron.down")
                        .frame(width: 10)
                        .font(.headline)
                }
                .foregroundColor(.black)

            }
            .padding(10)
            
            Divider()
                .padding(-12)
        }
    
    }
}

struct Heading_Previews: PreviewProvider {
    static var previews: some View {
        Heading()
    }
}

