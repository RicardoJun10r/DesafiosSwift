//
//  desafio5_tela2.swift
//  test2
//
//  Created by Student_02 on 11/10/23.
//

import SwiftUI

struct desafio5_tela2: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Tela 2")
                NavigationLink("Tela 1", destination: desafio5_tela2_tela2())
            }
        }
    }
}

struct desafio5_tela2_Previews: PreviewProvider {
    static var previews: some View {
        desafio5_tela2()
    }
}
