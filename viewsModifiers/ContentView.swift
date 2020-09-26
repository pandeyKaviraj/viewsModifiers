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
        Color.gray
            .frame(width: 300, height: 200)
        .watermarked(with: "Hacking with Swift")
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
