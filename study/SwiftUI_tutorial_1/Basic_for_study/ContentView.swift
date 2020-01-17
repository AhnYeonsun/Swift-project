//
//  ContentView.swift
//  Basic_for_study
//
//  Created by 안연선 on 2020/01/12.
//  Copyright © 2020 sunny-til. All rights reserved.
//

// Framework 가져오기
import SwiftUI

// View를 상속받는 ContentView 구조체 선언
struct ContentView: View {
    // body: 반드시 필요. 최상위 view 역할이며 최대 10개의 ChildView를 가질 수 있음.
    // 초과 시, Group{} 태그나, Stack container로 감싸주면 됨.
    // some: 특정 조건을 만족하는 generic type view
    
    @State var touchedCount = 0 // 일반 선언 시, 구조체 특징상 내부 method 안에서 변수 변경 불가. state 선언 필요!
    var body: some View {
        // Form: 데이터 및 설정을 다루기 위한 container
        // Form { Group{} }
        
        // UINavigationController 역할의 container
        // 실행 시, 상단에 title과 네비를 위한 공간이 생김
        // title 설정 시 주의! Form 태그 뒤에 붙여야 함!!
        NavigationView{
            Form{
                Text("Hello World!!!")
                Button("this is Button"){
                    // Button click callback
                    self.touchedCount += 1
                    // SwiftUI에서는 State annotation이 붙은 변수가 변하면 자동으로 view rendering 다시함.
                }
            }.navigationBarTitle("this is title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
