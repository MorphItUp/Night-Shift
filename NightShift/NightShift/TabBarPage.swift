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
                    
            TodayView().tabItem {
                Text("Today")
            }
            
            GamesView().tabItem {
                Text("Games")
            }
            
            ArcadeView().tabItem {
                Text("Arcade")
            }
            
            SearchView().tabItem {
                Text("Search")
            }
            
        }
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

