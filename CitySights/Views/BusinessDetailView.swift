//
//  BusinessDetailView.swift
//  CitySights
//
//  Created by Tayami Rai on 08/12/2023.
//

import SwiftUI

struct BusinessDetailView: View {
    
    var business: Business?
    
    var body: some View {
        VStack{
            ZStack(alignment: .trailing){
                Image("detail-placeholder-image")
                    .resizable()
                VStack{
                    Spacer()
                    Image("yelp-attribution-image")
                        .frame(width: 74, height: 36)
                }
                    
            }
            .frame(height: 164)
            
            ZStack{
                Rectangle()
                    .foregroundStyle(.green)
                Text("Open")
                    .bold()
                    .foregroundStyle(.white)
            }
            .frame(height: 36)
            
            ScrollView{
                VStack(spacing: 0){
                    Text(business?.name ?? "")
                        .font(Font.system(size: 21))
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text("\(business?.location?.address1 ?? ""), \(business?.location?.city ?? "")")
                    Text("\(business?.location?.state ?? ""), \(business?.location?.zipCode ?? ""), \(business?.location?.country ?? "")")
                        .padding(.bottom, 10)
                    
                    Image("regular_\(business?.rating ?? 0)")
                        .padding(.bottom, 16)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "phone")
                        Text(business?.phone ?? "")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding(.vertical, 12)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "globe")
                        Text(business?.url ?? "")
                            .lineLimit(1)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding(.vertical, 12)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("\(business?.reviewCount ?? 0) reviews")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding(.vertical, 12)
                    
                    Spacer()
                }
            }
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    BusinessDetailView()
}
