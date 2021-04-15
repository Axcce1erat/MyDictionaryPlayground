//
//  ContentView.swift
//  testConsoleOutToView
//
//  Created by Axel Schwarz on 12.04.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = "Hello, World!"
    @State var isRunning = false
    
    @State private var console:String = Console().execute()

    
    var body: some View {
        VStack {
            HStack {
                TextField("Message", text: $console)
                Button(action: {
                    
                    print($console)
                    let executableURL = URL(fileURLWithPath: "/usr/bin/say")
                    try! Process.run(executableURL,
                                         arguments: [self.console],
                                         terminationHandler: { _ in self.isRunning = false })
                }) {
                    Text("Say func")
                }.disabled(isRunning)
                .padding(.trailing)
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
