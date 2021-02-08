//
//  WallpaperDetails.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/22/20.
//

import SwiftUI

struct WallpaperDetails: View {
    
    var image: String
    
    var body: some View {
        
        
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height * 0.6)
                .cornerRadius(10)
                .padding([.bottom], 6)
            
            
            AuthorView()
            
            Text("Some Descriptive text about the wallpaper that shows how wise and mindfull the author is.")
                .font(.system(size: 15))
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding([.leading, .trailing])
                .multilineTextAlignment(.center)
            
            DownloadActionView().padding()
            
            Spacer()
            
            
        }.padding([.leading, .trailing]).ignoresSafeArea()
        
        
        
    }
}

struct WallpaperDetails_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperDetails(image: "wallpaper")
    }
}


struct AuthorView: View {
    
    var body: some View {
        
        HStack {
            
            Image("logo").resizable().frame(width: 45, height: 45, alignment: .leading).cornerRadius(8)
            
            VStack(alignment: .leading) {
                
                Text("Wallpaper Name")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                
                Text("Author Name")
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
            }
            
            
        }.padding([.leading]).frame(width: UIScreen.main.bounds.width, alignment: .leading)
        
        Divider().padding([.leading, .trailing])
    }
    
}


struct DownloadActionView: View {
    var body: some View {
        
        Button(action: {}, label: {
            Text("Download")
                .fontWeight(.light)
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .padding([.leading, .trailing], 80)
                .background(Color.black)
                .cornerRadius(100)
        })
        
    }
}
