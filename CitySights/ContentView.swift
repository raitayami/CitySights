//
//  ContentView.swift
//  CitySights
//
//  Created by Tayami Rai on 06/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var businesses = [Business]()
    @State var query: String = ""
    var service = DataService()
    
    var body: some View {
        VStack{
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
            List(businesses){ b in
                Text(b.name ?? "")
            }
        }
        .padding()
        .task{
            businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
