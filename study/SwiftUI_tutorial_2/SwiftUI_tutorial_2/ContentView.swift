//
//  ContentView.swift
//  SwiftUI_tutorial_2
//
//  Created by 안연선 on 2020/01/16.
//  Copyright © 2020 sunny-til. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let genderType = ["man", "woman", "secret"]
    
    @State var name = ""
    @State var bornIn = 0
    @State var gender = 0
    
    var resultScript:String {
        if(name.isEmpty){
            return "Enter your name"
        } else{
            return "\(name)'s gender is \(genderType[gender]), and age is \(120-bornIn)."
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Enter your name", text: $name)
                        .keyboardType(.default)
                }
                Section(header: Text("Birth")) {
                    // Picker: 선택형 list. 자동으로 조건에 맞게 iteration checker 생성.
                    Picker("birth", selection: $bornIn) {
                        ForEach(1900 ..< 2020) {
                            Text("year of birth: \(String($0))")
                        }
                    }
                }
                Section(header: Text("Gender")) {
                    Picker("gender", selection: $gender) {
                        ForEach(0 ..< genderType.count) {
                            Text("\(self.genderType[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Results")) {
                    Text("\(resultScript)")
                }
            }.navigationBarTitle("join us")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
