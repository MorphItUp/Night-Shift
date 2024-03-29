//
//  CommunityView.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 2/6/21.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        
        
        NavigationView {
            
            ScrollView {
                
                Divider().padding([.leading, .trailing], 10).padding([.bottom], 5)
                
                VStack(alignment: .leading) {
                    
                    WallpaperView(image: "wallpaper_black1", category: "Nature", title: "Desert", description: "Some descriptive text about deserts").frame(height: 500)
                    
                    WallpaperView(image: "wallpaper_black2", category: "Nature", title: "Desert", description: "Some descriptive text about deserts").frame(height: 500)
                    
                    WallpaperView(image: "wallpaper_black3", category: "Nature", title: "Desert", description: "Some descriptive text about deserts").frame(height: 500)
                    
                }
                
                
            }
            
            .navigationBarTitle("Community", displayMode: .large)
        }
        
        
        
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
