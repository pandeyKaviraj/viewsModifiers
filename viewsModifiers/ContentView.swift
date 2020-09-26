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
        Text("Hello World")
        .titleStyle()
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

//Custom structure for new style
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(Capsule())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
