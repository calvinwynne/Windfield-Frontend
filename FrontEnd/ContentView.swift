//
//  ContentView.swift
//  FrontEnd
//
//  Created by Ajit Kumar on 28/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            ProgressView(value: 0, total: 100)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

