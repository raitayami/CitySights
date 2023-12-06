//
//  ContentView.swift
//  CitySights
//
//  Created by Tayami Rai on 06/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    
    var body: some View {
        HStack {
            
            TextField("Where do you want to go?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                
            } label: {
                Text("Go")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
