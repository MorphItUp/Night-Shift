//
//  TodayPage.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/8/20.
//

import SwiftUI

struct ExploreView: View {
    
    @State var scale = false
    
    var body: some View {
        
        
        NavigationView {
            
            
            ScrollView {
                
                Divider().padding([.leading, .trailing], 10).padding([.bottom], 5)
                
                VStack(alignment: .leading) {
                    
                    //                    HStack {
                    //
                    //                        VStack(alignment: .leading) {
                    //                            Text("TUESDAY 8 DECEMBER").foregroundColor(.gray).bold().font(.caption)
                    //                            Text("Today").font(.title).bold()
                    //                        }
                    //                        Spacer()
                    //                        Button(action: navigateToProfile, label: {
                    //                            Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    //                        })
                    //
                    //
                    //                    }.padding([.leading, .trailing])
                    
                    
                    
                    
                    WallpaperView(image: "wallpaper", category: "Nature", title: "Desert", description: "Some descriptive text about deserts")
                        .frame(height: 500)
                        
                    
                    WallpaperView(image: "wallpaper_red1", category: "Nature", title: "Desert", description: "Some descriptive text about deserts").frame(height: 500)
                    
                    WallpaperView(image: "wallpaper_red2", category: "Nature", title: "Desert", description: "Some descriptive text about deserts").frame(height: 500)
                    
                }
//                .padding([.leading,.trailing])
//                .padding([.bottom],10)
                
            }
            
            .navigationBarTitle("Explore", displayMode: .large)
        }
        
        
    }
    
    func navigateToProfile() {
        
    }
    
}


struct ButtonBar: View {
    
    var body: some View {
        
        Button(action: navigateToProfile, label: {
            Image(systemName: "person.crop.circle.fill").resizable().frame(width: 40, height: 40, alignment: .trailing).accentColor(.black)
        })
        
    }
    
    func navigateToProfile() {
        
    }
    
}

struct NavigationBarItems: View {
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text("TUESDAY 8 DECEMBER").foregroundColor(.gray).bold().font(.caption)
                Text("Today").font(.title).bold()
            }
            Spacer()
            Button(action: navigateToProfile, label: {
                Image("Profile")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .trailing)
                
            })
            
            
        }.padding([.leading, .trailing])
    }
    
    func navigateToProfile() {
        
    }
    
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

