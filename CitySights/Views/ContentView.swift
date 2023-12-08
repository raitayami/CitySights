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
            List{
                ForEach(businesses){ b in
                    VStack(spacing: 20){
                        HStack(spacing: 0){
                            Image("list-placeholder-image")
                                .padding(.trailing, 16)
                            VStack(alignment: .leading){
                                Text(b.name ?? "Restaurant")
                                    .font(Font.system(size: 15))
                                    .bold()
                                Text(CalculateDistance.distanceAwayText(metres: b.distance ?? 0))
                                    .font(Font.system(size: 16))
                                    .foregroundStyle(Color(red: 67/255, green: 71/255, blue: 76/255))
                            }
                            Spacer()
                            Image("regular_\(b.rating ?? 0)")
                        }
                        Divider()
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .task{
            businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
