//
//  desafio_6_photos.swift
//  test2
//
//  Created by Student_02 on 17/10/23.
//

import SwiftUI

struct desafio_6_photos: View {
    
    var imagens = [
        "pencil",
        "eraser.fill",
        "folder.fill.badge.plus",
        "paperplane.fill",
        "externaldrive.fill.badge.checkmark",
        "trash.square.fill",
        "figure.rower"
    ]
    
    var body: some View {
        ScrollView{
            ForEach(imagens, id: \.self){imagem in
                Image(systemName: imagem).resizable().frame(width: 150, height: 150)
            }
        }
    }
}

struct desafio_6_photos_Previews: PreviewProvider {
    static var previews: some View {
        desafio_6_photos()
    }
}
