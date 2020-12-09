//
//  FeaturedView.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/9/20.
//

import SwiftUI

struct FeaturedView: View {
    
    var captionText: String
    var titleText: String
    var subtitleText: String
    var image: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(captionText).font(.caption).foregroundColor(.blue)
            Text(titleText)
            Text(subtitleText).font(.subheadline).foregroundColor(.gray)
            Image(image).resizable().frame(height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).cornerRadius(5)
            
            
        }.frame(minWidth: 0, maxWidth: UIScreen.main.bounds.width - 20, alignment: .leading).padding(10)
        
        
    }
    
}


struct FeaturedView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            FeaturedView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "wallpaper2")
        }
    }
    
}
