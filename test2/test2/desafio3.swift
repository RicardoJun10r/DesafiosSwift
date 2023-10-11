//
//  desafio3.swift
//  test2
//
//  Created by Student_02 on 10/10/23.
//

import SwiftUI

struct desafio3: View {
    
    @State private var toogle = false
    
    var body: some View {
        VStack{
            Image("logo")
                .resizable().scaledToFit()
            Image("truck")
                .resizable().scaledToFit()
            Button("Enviar"){
                
                toogle = !toogle
                
            }.alert(isPresented: $toogle){
                Alert(
                    title: Text("Bem-vindo, Ricardo"),
                    message: Text("Ratinhoooo")
                )
            }
        }
    }
}



struct desafio3_Previews: PreviewProvider {
    static var previews: some View {
        desafio3()
    }
}
