//
//  CollectionsPage.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/8/20.
//

import SwiftUI
import Pages

struct CollectionsView: View {
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {

                Divider().padding([.leading, .trailing], 10).padding([.bottom], 15)

                CollectionPages(category: "Black")
                CollectionPages(category: "White")
                CollectionPages(category: "Red")

            }
            
            .navigationBarTitle("Collections", displayMode: .large)
        }
        
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsView()
    }
}



struct SingleCollectionView: View {
    
    var image: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            ImageView(image: image)
                .cornerRadius(30)
                .shadow(color: .gray, radius: 10, x: 1.0, y: 5.0)
                .padding([.leading,.trailing])
                .padding([.bottom],30)
        }
    }
    
}


struct CollectionPages: View {
    
    @State var currentPage = 0
    
    var category: String
    
//    var wallpapers: [String]
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            Text(category)
                .font(.system(size: 28))
                .fontWeight(.bold)
                .padding([.leading, .trailing])
                .padding([.top], 10)
                
            Pages(currentPage: $currentPage, hasControl: false) {
                
                SingleCollectionView(image: "wallpaper_black1")
                SingleCollectionView(image: "wallpaper_black2")
                SingleCollectionView(image: "wallpaper_black3")
                SingleCollectionView(image: "wallpaper_red1")
                SingleCollectionView(image: "wallpaper_red2")
                SingleCollectionView(image: "wallpaper_red3")
                
                
            }
            .frame(height: 500, alignment: .center)
            
        }
        
        
    }
    
}
