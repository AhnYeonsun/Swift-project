//
//  ContentView.swift
//  SwiftUI_tutorial_5
//
//  Created by 안연선 on 2020/01/19.
//

// About @State, @Binding, @ObservedObject
// 사용자에게 데이터를 어떻게 보여주느냐에 대해

import SwiftUI

// State에 대해
//struct ContentView: View {
//    // State: view가 접근 가능하도록 값을 갖고 있는 Property Wrapper
//    // 사용자가 별도의 코딩없이 annotation만 선언해도 view에서 수정/읽기가 가능하도록 캡슐화를 대신함
//    // @State annotation만 붙여도, Binding<T>라는 값으로 wrapping 해줌!
//    @State var isToggleOn: Bool = true // 단순 boolean 값
//    // @State var $isToggleOn : $가 붙으면 wrapper 자체를 받음. WrapperValue 자체를 변경 가능!
//
//    var body: some View {
//        VStack {
//            Toggle(isOn: $isToggleOn) { // $가 붙으면 값을 수정가능한 binding 타입으로 참조함
//                Text("글자 가리기")
//            }.padding()
//
//            if isToggleOn {
//                Text("그으으을자~")
//            }
//        }
//    }
//}

// ObservableObject에 대해
struct ContentView: View {
    @ObservedObject var countRepo = CountRepo()
    
    var body: some View {
        VStack {
            Text("\(self.countRepo.count)").font(.largeTitle)
            
            Button("숫자증가") {
                self.countRepo.count += 1
            }
        }
    }
}

// Binding에 대해
struct ChildView: View {
    // @Binding annotation: 초기화 시 state 값을 받는 것만으로, 여러 views가 동시에 state 값을 참조할 수 있음
    // 단, State는 Toggle 유무와 같이 UI의 상태 값과 같은 아주 한정된 용도로만 사용하길 권고하고 있음 (view 안에서만 사용하는 메모리기 때문..)
    @Binding var isToggleOn: Bool
    
    var body: some View {
        Toggle(isOn: $isToggleOn) { // $가 붙으면 값을 수정가능한 binding 타입으로 참조함
            Text("글자 가리기")
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
