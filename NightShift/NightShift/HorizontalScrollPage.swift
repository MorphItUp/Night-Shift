//
//  HorizontalScrollPage.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/9/20.
//

import SwiftUI

struct HorizontalScrollPage: View {
    
    var items: [GameData]
    
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                ForEach(0 ..< 3) { row in
                    
                    HStack {
                        
                        ForEach(0 ..< items.count / 3) { column in
                            GameCell(data: items[column])
                            
                        }
                        
                    }
                    
                }
                
            })
        }
        
    }
    
}


struct GameCell: View {
    
    var data: GameData
    
    var body: some View {
        
        HStack {
            Image(data.image).resizable().frame(width: 50, height: 50, alignment: .leading).cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(data.title).font(Font.system(size: 20))
                Text(data.subtitle).foregroundColor(.gray).font(.caption)
            }
            
        }.padding().frame(width: UIScreen.main.bounds.width - 40, alignment: .leading)
        
    }
    
}


struct HorizontalScrollPage_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollPage(items: GameStorage().thisWeeksGames)
    }
}


