//
//  ContentView.swift
//  potatoe_calc
//
//  Created by Vsevolod Beluga on 25.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var input_val_1 : Int = 0
    @State private var input_val_2 : Int = 0
    @State private var result = "0"
    
    var body: some View {
    
        HStack {
            TextField("поле ввода", value: $input_val_1, formatter: NumberFormatter())
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .onChange(of : input_val_1) {result = "unknown"}
            TextField("поле ввода", value: $input_val_2, formatter: NumberFormatter())
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .onChange(of : input_val_2) {result = "unknown"}
        }.padding()

        HStack {
            Button("+"){
                result = "\(String(sum(Int32(input_val_1), Int32(input_val_2))))"
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Button("-"){
                result = "\(String(min(Int32(input_val_1), Int32(input_val_2))))"
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        
        HStack {
            Button("*"){
                result = "Hello world!"
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Button("/"){
                result = "Hello world!"
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        
        Text(result).padding()
        
    }
}

#Preview {
    ContentView()
}
