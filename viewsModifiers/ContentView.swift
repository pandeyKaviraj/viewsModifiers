//
//  ContentView.swift
//  viewsModifiers
//
//  Created by KAVIRAJ PANDEY on 22/09/20.
//  Copyright © 2020 KAVIRAJ PANDEY. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 50) {
            CapsuleText(text: "Elon Musk")
                .background(Color.yellow)
            CapsuleText(text: "Bill Gates")
                .background(Color.gray)
        }
            
    }
}

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
