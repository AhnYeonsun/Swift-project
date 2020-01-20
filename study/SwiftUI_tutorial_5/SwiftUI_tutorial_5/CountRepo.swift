//
//  CountRepo.swift
//  SwiftUI_tutorial_5
//
//  Created by 안연선 on 2020/01/19.
//

import Foundation


// class를 만들고, ObservedObject protocol을 상속받으면 SwiftUI에서 사용할 수 있음
class CountRepo: ObservableObject {
    // @Published annotation: 값이 변동되었을 때, 바로 view에게 즉각적으로 알려줌
    @Published var count: Int = 0
    
    
}
