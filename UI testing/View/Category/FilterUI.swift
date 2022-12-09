//
//  FilterUI.swift
//  UI testing
//
//  Created by Jason Wang on 3/12/22.
//

import SwiftUI

struct FilterUI: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Filter by:")
                .font(.title2)
            Text("- Sports")
            Text("- Date")
            Text("- Time")
            Text("- Location")
        }
        
    }
}

struct FilterUI_Previews: PreviewProvider {
    static var previews: some View {
        FilterUI()
    }
}
