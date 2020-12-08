//
//  TodayPage.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/8/20.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
       
        ScrollView {
            
            
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("TUESDAY 8 DECEMBER").foregroundColor(.gray).bold().font(.caption)
                        Text("Today").font(.title).bold().font(.title)
                    }
                    Spacer()
                    Button(action: navigateToProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                    
                    
                }.padding([.leading, .trailing])
                
                HighlightView(category: "Nature", title: "Desert", message: "Some descriptive text about deserts").frame(height: 500, alignment: .leading)
                
                HighlightView(category: "Nature", title: "Desert", message: "Some descriptive text about deserts").frame(height: 500, alignment: .leading)
                
                HighlightView(category: "Nature", title: "Desert", message: "Some descriptive text about deserts").frame(height: 500, alignment: .leading)
            }
            
            
        }
        
    }
    
    
    func navigateToProfile() {
        
    }
    
}


struct HighlightView: View {
    
    var category: String
    var title: String
    var message: String
    
    var body: some View {
        VStack {
            
            ZStack {
                Image("wallpaper").resizable()
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading) {
                    Text(category).foregroundColor(Color.white.opacity(0.6)).bold()
                    Text(title).foregroundColor(.white).font(.title)
                    Spacer()
                    Text(message).foregroundColor(.white)
                }.padding()
                
                
            }
            
        }.cornerRadius(30).padding().shadow(radius: 5)
        
    }
    
}


struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}

