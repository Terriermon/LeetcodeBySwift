//
//  TwoSum.swift
//  
//
//  Created by chenxiaolin on 2022/7/10.
//

import Foundation

/**
 要点：
 1. 使用map以target - num为key,以当前下标为value
 2. 循环到target - num时，读取之前的下标
 3. 将之前的下标和当前的下标返回
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for index in nums.indices {
            if let ret = dict[target - nums[index]] {
             return [ret, index]
            } else {
                dict[nums[index]] = index
            }
        }
        return []
    }
}

let solution = Solution()
solution.twoSum([2,7,11,15], 9)
solution.twoSum([3,2,4], 6)
solution.twoSum([3,3], 6)

