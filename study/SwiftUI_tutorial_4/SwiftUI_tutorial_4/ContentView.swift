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
        NavigationView {
            List(self.carMakers, id: \.name) { carMaker in
                NavigationLink(destination: CarMakerDetail(carMaker: carMaker)) {
                    CarMakerCell(carMaker: carMaker)
                }
                // 조금 더 간결하게 displaymode inline
            }.navigationBarTitle("자동차들", displayMode: .inline)
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
                Text("\(carMaker.numberOfStore) 만원")
            }
        }
    }
}

// carMaker를 인자로 받음
struct CarMakerDetail: View {
    
    // 양방향 바인딩을 위해 State Annotation을 붙임
    // State annotation이 붙으면, view 안에서 참조할 수 있는 wrapping class인
    // Binding<T> 의 형태로 받게 됨
    @State var isPresent: Bool = false
    let carMaker: CarMaker
    
    var body: some View {
        VStack {
            Image(carMaker.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                // 탭을 연속으로 두 번 눌렀을 때, perform 블록 실행시킴
                .onTapGesture(count: 2, perform: {
                    self.isPresent = true
                })
            Text(carMaker.name)
        }.alert(isPresented: $isPresent, content: {
            Alert(title: Text("더블클릭"), message: Text("하셨습니다!"), dismissButton: .default(Text("OK")))
        })
    }
}
// xcode의 preview 화면에서는 인자가 정의되어 있지 않기 때문에,
// PreviewProvider를 정의하지 않으면 렌더링할 데이터가 없어 미리보기 불가. 아래와 같이 선언
struct CarMakerDetail_Previews: PreviewProvider {
    // view 내부에서의 참조를 위해 static 변수로 선언
    static let previewMaker = CarMaker(name: "hello world", imageUrl: "car1", numberOfStore: 10000)
    static var previews: some View {
        CarMakerDetail(carMaker: previewMaker)
    }
}
