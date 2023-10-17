//
//  desafio1.swift
//  test2
//
//  Created by Student_02 on 10/10/23.
//

import SwiftUI

struct desafio1: View {
    var body: some View {
        VStack{
            Image("truck")
                            .resizable()
                            .scaledToFit()
                        Text("HackaTruck")
                            .foregroundColor(.blue)
            HStack{
                Text("Maker")
                    .foregroundColor(.yellow)
                Text("Space")
                    .foregroundColor(.red)
            }
        }
    }
}

struct desafio1_Previews: PreviewProvider {
    static var previews: some View {
        desafio1()
    }
}
