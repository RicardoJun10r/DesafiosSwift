//
//  desafio5.swift
//  test2
//
//  Created by Student_02 on 11/10/23.
//

import SwiftUI

struct desafio5: View {
    
    @State var isSheet = false
    
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Modo 1", destination: desafio5_tela1())
                NavigationLink("Modo 2", destination: desafio5_tela2())
                Button(action: {
                    isSheet.toggle()
                }){
                    Text("Modo 3")
                }.sheet(isPresented: $isSheet){
                    desafio5_tela3()
                }
            }
        }
    }
}

struct desafio5_Previews: PreviewProvider {
    static var previews: some View {
        desafio5()
    }
}
