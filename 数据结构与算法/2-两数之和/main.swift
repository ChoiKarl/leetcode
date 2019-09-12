//
//  main.swift
//  两数之和
//
//  Created by karl on 2019/07/09.
//  Copyright © 2019 karl. All rights reserved.
//
//  https://leetcode-cn.com/problems/two-sum/

import Foundation

// 从数组中找到两个值相加等于target的索引.
let array = [1, 3, 5, 12, 11, 9, 8]
let target = 11

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for (i, num) in nums.enumerated() {
        let value = target - num
        if let index = dict[value] {
            return [i, index]
        }
        dict[num] = i;
    }
    return []
}


let s = twoSum(array, target)
print(s)
