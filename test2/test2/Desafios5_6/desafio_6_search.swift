//
//  desafio_6_search.swift
//  test2
//
//  Created by Student_02 on 17/10/23.
//

import SwiftUI

struct desafio_6_search: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
                .scaledToFit().padding()
            Text("Hello, Hackatruck")
                .position(CGPoint(x: 195, y: 380))
                .font(.title)
        }
    }
}

struct desafio_6_search_Previews: PreviewProvider {
    static var previews: some View {
        desafio_6_search()
    }
}
