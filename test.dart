class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final res = {};
    for (var i = 0; i < nums.length; i++) {
      int comp = target - nums[i];
      if (res.containsKey(comp)) {
        return [res[comp], i];
      }
      res[nums[i]] = i;
    }
    return [];
  }
}
