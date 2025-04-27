using System;
using System.Collections.Generic;

public class Solution {
    public int[] TwoSum(int[] nums, int target) {
        // Değer → İndeks eşlemesi için sözlük
        Dictionary<int,int> map = new Dictionary<int,int>();

        for (int i = 0; i < nums.Length; i++) {
            int complement = target - nums[i];
            // Tamamlayıcı daha önce görüldüyse
            if (map.ContainsKey(complement)) {
                return new int[] { map[complement], i };
            }
            // Şu anki değeri ve indeksini ekle
            map[nums[i]] = i;
        }
        // Problemde her zaman bir çözüm olduğu varsayıldığı için buraya gelinmez
        throw new ArgumentException("No two sum solution");
    }
}