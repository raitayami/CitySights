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
        Text(business?.name ?? "")
    }
}

#Preview {
    BusinessDetailView()
}
