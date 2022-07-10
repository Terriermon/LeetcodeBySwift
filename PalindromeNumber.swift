//
//  PalindromeNumber.swift
//  
//
//  Created by chenxiaolin on 2022/7/10.
//

import Foundation

class Solution {
    
    /// 法1
    func isPalindromeMethod2(_ x: Int) -> Bool {
        if x < 0 || (x % 10 == 0 && x != 0)  {
            return false
        } else {
            return String(String(x).reversed()) == String(x)
        }
    }
    
    /// 法2
    func isPalindromeMethod2(_ x: Int) -> Bool {
        // 边界条件
        if x < 0 || (x % 10 == 0 && x != 0)  {
            return false
        } else {
            
            var x = x
            var div = 1
            
            // 获取x的位数
            while (x / div >= 10) {
                div *= 10
            }
            
            while (x > 0) {
                // 获取首位
                var left = x / div
                // 获取末位
                var right = x % 10
                // 如果不相等，则不是回文数
                if left != right {
                    return false
                }
                // 掐头去尾 %是去头， /是去尾
                x = (x % div) / 10
                // 被除数也需要去掉两位
                div /= 100
            }
        }
    }
    
    /// 法3
    func isPalindromeMethod3(_ x: Int) -> Bool {
        // 如果为负数肯定不是回文数
        // 如果末尾为0也必定不是回文数
        if x < 0 || (x % 10 == 0 && x != 0)  {
            return false
        } else {
            var x = x
            var revertedNumber = 0
            // 按位反转，如果反转后的数字大于抹位后的x，结束
            while(x > revertedNumber) {
                // 将数字反转，最后一位转为第一位
                revertedNumber = revertedNumber * 10 + x % 10
                // 抹掉最后一位
                x /= 10
            }
            // 如果位数是奇数
                // 结束循环的时候 revertedNumber 比 x 大一位
            // 如果位数是偶数
                // 结束循环的时候，如果是回文数 revertedNumber == x
            return x == revertedNumber || x == revertedNumber / 10
        }
    }
}
