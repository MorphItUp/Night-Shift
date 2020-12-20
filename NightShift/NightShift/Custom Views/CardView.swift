//
//  CardView.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/9/20.
//

import SwiftUI

struct CardView: View {
    
    @State var isShowingContent: Bool = true
    private var headlineText: String = "Headline"
    
    var body: some View {
        
       Text("hello")
        
    }
    
}

// MARK: - Preview Provider

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

