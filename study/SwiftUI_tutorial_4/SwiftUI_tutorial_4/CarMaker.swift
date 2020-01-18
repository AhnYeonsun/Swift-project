//
//  CarMaker.swift
//  SwiftUI_tutorial_4
//
//  Created by 안연선 on 2020/01/18.
//  Copyright © 2020 sunny-til. All rights reserved.
//

import Foundation

// 아래 이름과 파일 명이 같아야 하는가?
struct CarMaker {
    let name: String
    let imageUrl: String
    let numberOfStore: Int
}

extension CarMaker {
    // static function을 이용하여 모든 데이터 가져오기
    static func all() -> [CarMaker] {
        return [
            CarMaker(name: "에쁜차", imageUrl: "car1", numberOfStore: 2000),
            CarMaker(name: "머싯는차", imageUrl: "car2", numberOfStore: 2100),
            CarMaker(name: "까리한차", imageUrl: "car3", numberOfStore: 2200)
        ]
    }
}
