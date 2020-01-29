import UIKit

// let & var

// let: 상수
// var: 변수

let maxSpeed:Int = 200 // 변하지 않는 값이라는 뜻
// 때문에 +-*/ 와 같은 값 변경이 안됨.

var currentSpeed:Int = 110
currentSpeed += 10

// Swift에서는 엄격한 코딩이 요구되기 때문에, int는 끝까지 int, float는 끝까지 float여야 함.
// int나 float이라는 정의(inferring) 없이도 값 자체의 타입을 따르게 되어 있음.

// -------------------------------------------------------------------------

// string & numbers
let name = "yeonsun"

var greeting = "Hello"

greeting += " " + name

// characters = "name".characters (이렇게 char 단위로 나누는 것 이제 안됨. 버전 문제)
let count = name.count  // (이렇게 사용하길)

let url = "www.naver.com"
let hasProtocol = url.hasPrefix("http://")

print("\(name)") // 변수 출력 시, \() 사용!

// type 예제들 + 변환
currentSpeed += Int(20.5)

let intMax = Int.max
let UintMax = UInt.max // unsigned int : int의 두배
let intMin = Int.min
let UintMin = UInt.min // 부호를 갖고 있지 않은 값은, 0이 최소값

let pi = 3.14
let divider = 2
let halfPi = 3.14/2 // 직접 계산하는건 가능하지만,
let halfPi2 = 3.14/Double(divider) // 이와 같이 상수로 나눠줄 땐 type 바꿔줘야 함.

// -------------------------------------------------------------------------

// Tuple
// ,로 구분된 값의 리스트. ()로 묶음.
// 내부에는 type 상관없이 넣을 수 있음

let time1 = (9,0,48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11,51,5)
time2.h
time2.m
time2.s

let duration = (time1, time2) // tuple 안에 tuple
let (start, end) = duration
let endHour = end.h // 즉시 Index 정의로 꺼내 쓸 수 있음

// typealias : 간단한 type 지정
typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9,10,23), (17,8,21))
print("We studied until \(today.end.h) today.")
// 이와 같이 tuple과 typealias를 활용하여 값의 묶음을 만들 수 있고, 편리하게 이 묶음에서 값을 빼내 쓸 수 있음

// -------------------------------------------------------------------------

