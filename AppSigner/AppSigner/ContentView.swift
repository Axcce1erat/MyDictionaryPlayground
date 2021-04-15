import SwiftUI

struct ContentView: View {
    
    @State var consoleOut = CoreHandler().startAndriod()
    
    var body: some View {
        VStack {
            Text("Look at the console blow...")
            //TextField("Out", text: $consoleOut)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
