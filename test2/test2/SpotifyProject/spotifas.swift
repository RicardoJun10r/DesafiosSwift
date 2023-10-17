//
//  spotifas.swift
//  test2
//
//  Created by Student_02 on 16/10/23.
//

import SwiftUI

struct spotifas: View {
    
    private var musicas = [
        Musica(id: 0, musica: "musica 0", artista: "artista 0", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 1, musica: "musica 1", artista: "artista 1", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 2, musica: "musica 2", artista: "artista 2", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 3, musica: "musica 3", artista: "artista 3", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 4, musica: "musica 4", artista: "artista 4", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 5, musica: "musica 5", artista: "artista 5", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 6, musica: "musica 6", artista: "artista 6", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 7, musica: "musica 7", artista: "artista 7", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 8, musica: "musica 8", artista: "artista 8", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
        Musica(id: 9, musica: "musica 9", artista: "artista 9", capa: "https://yt3.googleusercontent.com/cDMtYP2OiQTne-qHVa_qsV90BdWOr3uRkk3MsTClsvVyn51N_DS3PQIzc6rMf660qwLHq7WK=s900-c-k-c0x00ffffff-no-rj"),
    ]
    
    var body: some View {
        NavigationStack{
                ZStack{
                    LinearGradient(colors: [.blue, .black.opacity(0.95)],
                                   startPoint: .top,
                                   endPoint: .center).ignoresSafeArea()
                    ScrollView{
                        VStack{
                            Image("iamge1")
                                .resizable()
                                .frame(width: 240, height: 240)
                                .padding(.bottom)
                            VStack{
                                Text("HackaFM")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .position(CGPoint(x: 70, y: 10))
                                HStack{
                                    Image("iamge1").resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.bottom)
                                    Text("HackaSong").foregroundColor(.white)
                                        .font(.title2)
                                    
                                    Spacer()
                                }
                            }
                        }
                        ForEach(musicas) { musica in
                            NavigationLink(destination: player(music: musica )){
                                HStack{
                                    AsyncImage(url: URL(string: musica.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    VStack{
                                        Text(musica.musica).foregroundColor(.white)
                                        Text(musica.artista).foregroundColor(.white)
                                    }.padding()
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        Text("Sugeridos")
                            .foregroundColor(.white)
                            .font(.title).position(CGPoint(x: 70, y: 10))
                        Spacer()
                        ScrollView(.horizontal){
                            
                            HStack{
                                ForEach(musicas) { musica in
                                    VStack{
                                        AsyncImage(url: URL(string: musica.capa)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height: 200)
                                        Text(musica.musica).foregroundColor(.white)
                                    }
                                        
                                    
                                }
                            }
                        }
                }
            }
        }
    }
}

struct spotifas_Previews: PreviewProvider {
    static var previews: some View {
        spotifas()
    }
}
