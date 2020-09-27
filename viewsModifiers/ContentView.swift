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
        GridStack(rows: 4, column: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).cicle")
                Text("R\(row) C\(col)")
            }
        }
    }
}

//Custom Containers
struct GridStack<Content: View>: View {
    let rows: Int
    let column: Int
    //Take particular note of the let content line – that defines a closure that must be able to accept two integers and return some sort of content we can show.
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach (0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<self.column, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
