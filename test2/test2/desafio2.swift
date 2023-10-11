//
//  desafio2.swift
//  test2
//
//  Created by Student_02 on 10/10/23.
//

import Foundation
import SwiftUI

struct desafio2: View {
    var body: some View {
        VStack{
            Image("iamge1")
                .resizable()
                .scaledToFit()
            Image("iamge1")
                .resizable().clipShape(Circle())
            ZStack{
                Rectangle()
                Text("Maker")
                    .foregroundColor(.yellow)
                    .position(CGPoint(x: 120, y: 120))
                    .font(.largeTitle)
                Text("Space")
                    .foregroundColor(.red)
                    .position(CGPoint(x: 250, y: 120))
                    .font(.largeTitle)
            }
        }
    }
}

struct desafio2_Previews: PreviewProvider {
    static var previews: some View {
        desafio2()
    }
}
