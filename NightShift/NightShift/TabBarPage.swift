//
//  TabBarPage.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/8/20.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        
        TabView(selection: $selected) {
                    
            ExploreView().tabItem {
                Text("Explore")
            }
            
            CommunityView().tabItem {
                Text("Community")
            }
            
            CollectionsView().tabItem {
                Text("Collections")
            }
            
            SearchView().tabItem {
                Text("Favorites")
            }
            
        }
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

