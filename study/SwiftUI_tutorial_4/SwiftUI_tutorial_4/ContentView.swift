//
//  ContentView.swift
//  SwiftUI_tutorial_4
//
//  Created by 안연선 on 2020/01/18.
//  Copyright © 2020 sunny-til. All rights reserved.
//

// Tutorial_4 : List and Navigation

import SwiftUI

struct ContentView: View {
    
    // 더미로 만든 데이터 가져오기
    let carMakers = CarMaker.all()
    
    var body: some View {
        // list & id 값을 인자로, lambda 식으로 데이터 값에 맞추어 view를 리턴
        List(self.carMakers, id: \.name) {CarMaker in
            Text(CarMaker.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CarMakerCell: View {
    let carMaker: CarMaker
    
    var body: some View {
        HStack {
            Image(carMaker.imageUrl)
                .resizable()
                .frame(width:100, height:100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(carMaker.name).font(.largeTitle)
                Text("\(carMaker.numberOfStore) 지점")
            }
        }
    }
}
