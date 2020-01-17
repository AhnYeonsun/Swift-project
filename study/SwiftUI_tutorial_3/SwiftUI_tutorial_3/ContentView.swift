//
//  ContentView.swift
//  SwiftUI_tutorial_3
//
//  Created by 안연선 on 2020/01/17.
//  Copyright © 2020 sunny-til. All rights reserved.
//

// Stack
// 스택 종류는 3가지 : Vertical/Horizontal/Both 하게 View를 쌓는, VStack/HStack/ZStack

import SwiftUI

struct ContentView: View {
    var body: some View {

        // alignment: 정렬방향, spacing: 간격
//        VStack(alignment: .leading, spacing: 20) {
//            Text("top")
//            // view 사이의 공간 만들기. 별도의 옵션이 없다면 default: 모든 영역 차지
//            // 부모 view인 VStack 역시 가능한 모든 영역만큼 크기가 늘어남
//            Spacer() // spacer 개수의 비율에 따라 공간 나눔
//            Spacer()
//            Text("middle")
//            Spacer().frame(height: 5) // frame값으로 선언한 width, height만큼 공간 차지
//            Text("bottom")
//        }.background(Color.red)
//        ZStack {
//            // 해당 스택의 배경 색 지정. yellow까지만 쓰면 SafeArea까지는 적용 안되지만,
//            // edgesIgnoringSafeArea 적용 시, 위까지 전체 색 지정됨
//            Color.yellow.edgesIgnoringSafeArea(.all)
//            // gradient & UIColor 추가
//            RadialGradient(gradient: Gradient(colors:[.white,.black]), center: .center, startRadius: 310, endRadius: 100) // black에서 white로 가운데로부터 그라데이션
//            AngularGradient(gradient: Gradient(colors:[.red,.yellow,.blue]), center: .center)
//            Color.red.frame(width:300,height:300) // red, yellow, blue를 시계방향으로 그라데이션
//            Color(red:0.1, green:0.2, blue:0.3).frame(width:00,height:2000) // gradient가 safeArea까지 적용되도록
//            Color.blue.frame(width:200,height:200) // 색상을 추가할수록 계속해서 view가 위로 쌓임
//        }
        ZStack { // 시계방향으로 무지개색이 그라데이션 +
            AngularGradient(gradient: Gradient(colors:[.red,.orange,.yellow,.green,.blue,.purple]), center: .center).edgesIgnoringSafeArea(.all)
            HStack {
                VStack {
                    Text("11시")
                    Spacer()
                    Text("9시")
                    Spacer()
                    Text("7시")
                }
                Spacer()
                VStack {
                    Text("12시")
                    Spacer()
                    Text("중앙")
                    Spacer()
                    Text("6시")
                }
                Spacer()
                VStack {
                    Text("1시")
                    Spacer()
                    Text("3시")
                    Spacer()
                    Text("5시")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
