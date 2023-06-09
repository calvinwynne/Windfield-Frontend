//
//  ContentView.swift
//  FrontEnd
//
//  Created by Ajit Kumar on 28/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress: Double = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
             ProgressView(value: progress, total: 100)
                .onReceive(timer) { _ in
                    progress = progress < 100 ? progress + 10 : 100
                }
            if progress == 100 {
                Text("👍🏼")
                ListItemRow(data:
                    ListItem(id: 1, name: "Jane Doe")
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
