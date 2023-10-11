//
//  desafio4.swift
//  test2
//
//  Created by Student_02 on 10/10/23.
//

import SwiftUI

struct desafio4: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var resultado: String = ""
    @State private var cor: String = ""
    var body: some View {
        ZStack{
            Color(cor).ignoresSafeArea()
            VStack{
                Text("Calculadora de IMC")
                
                TextField(
                    "Peso",
                    text: $peso
                ).textFieldStyle(.roundedBorder).padding(.horizontal)
                TextField(
                    "Altura",
                    text: $altura
                ).textFieldStyle(.roundedBorder).padding(.horizontal)
                Spacer()
                Button("Calcular"){
                    if let teste = Double(peso), let teste2 = Double(altura) {
                        var pesod: Double = teste
                        var alturad: Double = teste2
                        
                        var res: Double = pesod / (alturad * alturad)
                        
                        resultado = String(res)
                        
                        if(res < 18.5){
                            resultado = "Baixo peso"
                            cor = "Baixo_Color"
                        } else if((res > 18.5) && (res < 24.99)){
                            resultado = "Normal"
                            cor = "Normal_Color"
                        } else if((res > 25) && (res < 29.99)){
                            resultado = "Sobrepeso"
                            cor = "Sobrepeso_Color"
                        } else {
                            resultado = "Obesiddade"
                            cor = "Obesidade_Color"
                        }
                        
                    }
                    
                }
                Spacer()
                Text(resultado)
                Spacer()
                Image("tabela-IMC").resizable().scaledToFit()
            }
        }
    }
}

struct desafio4_Previews: PreviewProvider {
    static var previews: some View {
        desafio4()
    }
}
