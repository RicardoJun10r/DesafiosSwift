//
//  desafio_6.swift
//  test2
//
//  Created by Student_02 on 17/10/23.
//

import SwiftUI

struct desafio_6: View {
    var body: some View {
        ZStack{
            VStack{
                
                TabView{
                    desafio_6_home()
                        .tabItem{
                            Label("Home", systemImage: "homekit")
                        }
                    
                    desafio_6_search()
                        .tabItem{
                            Label("", systemImage: "magnifyingglass")
                        }
                    
                    desafio_6_photos()
                        .tabItem{
                            Label("Photos", systemImage: "photo.artframe")
                        }
                    
                    desafio_6_message()
                        .tabItem{
                            Label("message", systemImage: "message.fill")
                        }
                    
                    desafio_6_profile()
                        .tabItem{
                            Label("profile", systemImage: "person.circle.fill")
                        }
                }
            }
        }
    }
}

struct desafio_6_Previews: PreviewProvider {
    static var previews: some View {
        desafio_6()
    }
}
