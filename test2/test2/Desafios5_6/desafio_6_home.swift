//
//  desafio_6_home.swift
//  test2
//
//  Created by Student_02 on 17/10/23.
//

import SwiftUI

struct desafio_6_home: View {
    var body: some View {
        List(1..<50, id: \.self){ i in
            Text("item \(i)")
        }
    }
}

struct desafio_6_home_Previews: PreviewProvider {
    static var previews: some View {
        desafio_6_home()
    }
}
