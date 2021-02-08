//
//  WallpaperView.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 2/6/21.
//

import SwiftUI

public struct WallpaperView: View {
    
    var image: String
    var category: String
    var title: String
    var description: String
    
    @State var presentingModal = false
    
    @State var scale = false
    
    public var body: some View {
        
        
        VStack {
            Button(action: {
                
                self.presentingModal = true
                
                scale.toggle()
                
                
            }, label: {
                
                ZStack {
                    ImageView(image: image)
                    LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    
                    VStack(alignment: .leading) {
                        
                        Text(category)
                            .foregroundColor(Color.white.opacity(0.6))
                            .bold()
                        
                        Text(title)
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Spacer()
                        Text(description)
                            .foregroundColor(.white)
                        
                    }
                    .padding([.top, .bottom])
                }
                
            })
            .sheet(isPresented: $presentingModal) {
                WallpaperDetails(image: image)
            }
        }
        .cornerRadius(30)
        .shadow(color: .gray, radius: 10, x: 1.0, y: 5.0)
        .padding([.leading,.trailing]).padding([.bottom],10)
        
    }
    
}

struct ImageView: View {
    
    var image: String
    
    var body: some View {
        
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: 350, maxHeight: 500)
    }
    
}

struct WallpaperView_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperView(image: "wallpaper_red1", category: "Black", title: "Dark", description: "Hello this is a descriptive text").frame(width: 350, height: 500, alignment: .center)
    }
}
