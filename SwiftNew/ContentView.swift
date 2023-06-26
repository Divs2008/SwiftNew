//
//  ContentView.swift
//  SwiftNew
//
//  Created by Angshuman Saha on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTile = "What is your name?"
    
    var body: some View {
        VStack{
            Text(textTile)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.indigo, width: 3)
                .padding()
            Button("Submit Name") {
            textTile = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .accentColor(Color.green)
        }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

