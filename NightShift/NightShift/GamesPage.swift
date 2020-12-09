//
//  GamesPage.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/8/20.
//

import SwiftUI
import Pages

struct GamesView: View {
    
    var gameStorage = GameStorage()
    
    @State var currentPage = 0
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                HStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text("Today").font(.title).bold().font(.title)
                    }
                    Spacer()
                    Button(action: navigateToProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                    
                    
                }.padding([.leading, .trailing])
                
              
                Pages(currentPage: $currentPage, hasControl: false) {
                        
                        FeaturedView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "wallpaper2")
                        FeaturedView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "wallpaper2")
                        FeaturedView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "wallpaper2")
                        FeaturedView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "wallpaper2")
                    
                }.frame(height: 330, alignment: .center)
                

                Divider().padding()
                
                HorizontalScrollPage(items: gameStorage.thisWeeksGames)
                
                    
                
                
                
                
            }
            
        }
        
        
    }
    
    
    func navigateToProfile() {
        
    }
    
    
}



struct GameStorage {
    
    var thisWeeksGames = [GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there"),
                          GameData(id: UUID(), title: "Archetapp", image: "logo", subtitle: "The best app out there")]
    
    
}


struct GameData: Identifiable {
    
    var id = UUID()
    var title: String
    var image: String
    var subtitle: String
    
    
}


struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}


