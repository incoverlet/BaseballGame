//
//  BaseballGame.swift
//  BaseballGame
//
//  Created by damtea on 3/15/24.
//

import Foundation

class BaseballGame{
  func start() {
    let answer = makeAnswer() // 정답을 만드는 함수
    print(answer)
    print(" < 게임을 시작합니다 > ")
   
      while true {
          // 1. 유저에게 입력값을 입력받음
          print("숫자를 입력하세요")
          var input = readLine()
          
          // 2. 정수로 변환되지 않는 경우 반복문 처음으로 돌아가기
          guard let intValue = Int(input!) else {
              print("올바르지 않은 입력값입니다")
              continue
          }
          // 3. 세자리가 아니거나, 0을 가지거나 특정 숫자가 두번 사용된 경우 반복문 처음으로 돌아가기
          guard input!.count == 3,Set(input!).count == 3 , !input!.contains("0") else {
              print("올바르지 않은 입력값입니다")
              continue
          }
          // 4. 정답과 유저의 입력값을 비교하여 스트라이크/볼을 출력하기
          var strike = 0
          var ball = 0
          let myArray = String(answer).compactMap { Int(String($0)) }
        
          
          // 만약 정답이라면 break 호출하여 반복문 탈출
          if strike == 3 {
              print("정답입니다!")
              break;
          } else {
              print("\(strike)스트라이크 \(ball)볼")
          }
          
      }
  }
  func makeAnswer() -> Int {
    let numbers = Array(1...9)
    let randomNumbers = numbers.shuffled().prefix(3)
    let number = randomNumbers[0] * 100 + randomNumbers[1] * 10 + randomNumbers[2]
   
    return number
  }
}
