//
//  ContentView.swift
//  Shared
//
//  Created by GSM02 on 2022/06/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var be_changed : Int = 0
    
    @State var rand = Int.random(in: -20...20)
    
    var body: some View {
        
        VStack {
            
            if ( rand < be_changed ) {
                Text("Count : \(be_changed)")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
            }
            else if ( rand == be_changed) {
                Text("Count : \(be_changed)")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
            }
            else if ( rand > be_changed ) {
                Text("Count : \(be_changed)")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
            }
               
            HStack {
                
                Button {
                    be_changed += 1
                } label: {
                    Image(systemName: "plus.circle")
                }
                .padding()
                
                Button {
                    be_changed -= 1
                } label: {
                    Image(systemName: "minus.circle")
                }
                .padding()

            }
            
            Button {
                be_changed = 0
                rand = Int.random(in: -20...20)
            } label: {
                Text("Reset")
                    .font(.system(size: 20))
                    .foregroundColor(Color.black)
    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

