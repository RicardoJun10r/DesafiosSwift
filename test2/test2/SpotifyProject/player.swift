//
//  player.swift
//  test2
//
//  Created by Student_02 on 16/10/23.
//

import SwiftUI

struct player: View {
    
    var music: Musica
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black.opacity(0.95)],
                           startPoint: .top,
                           endPoint: .center).ignoresSafeArea()
            ScrollView{
                VStack{
                    AsyncImage(url: URL(string: music.capa)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 250, height: 250)
                    .padding(.top, 110)
                    VStack{
                        Text(music.musica)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .position(CGPoint(x: 190, y: 130))
                        Text(music.artista)
                            .foregroundColor(.white)
                            .font(.title)
                            .position(CGPoint(x: 190, y: 140))
                        HStack{
                            Image(systemName: "shuffle")
                                .resizable().frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "backward.end.fill")
                                .resizable().frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "play.fill")
                                .resizable().frame(width: 50, height: 50)
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "forward.end.fill")
                                .resizable().frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "repeat")
                                .resizable().frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding()
                        }.position(CGPoint(x: 190, y: 170))
                    }
                }
            }
        }
    }
}

struct player_Previews: PreviewProvider {
    static var previews: some View {
        player(music: Musica(id: 9, musica: "musica 9", artista: "artista 9", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"))
    }
}
