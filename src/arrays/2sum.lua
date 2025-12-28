local target = 9
local nums = { 2, 7, 11, 15 }
local nums2 = {3,2,4}
local target2 = 6

--- Finds two indices i, j such that nums[i] + nums[j] == target (brute force).
local function two_sum_bruteforce(nums, target, debug)
  for i = 1, #nums do
    for j = i + 1, #nums do
      local sum = nums[i] + nums[j]

      if debug then
        print(("i=%d j=%d sum=%d"):format(i, j, sum))
      end

      if sum == target then
        return i, j
      end
    end
  end
  return nil, nil
end


--Test cases
local test_cases = {
  { nums = {2, 7, 11, 15}, target = 9 },
  { nums = {3, 2, 4}, target = 6 },
  { nums = {1, 2, 3}, target = 10 },
}



--Test case execution
for _, test in ipairs(test_cases) do
  local i, j = two_sum_bruteforce(test.nums, test.target, false)

  if i and j then
    print(("Target=%d → i=%d j=%d (%d + %d)")
      :format(test.target, i, j, test.nums[i], test.nums[j]))
  else
    print(("Target=%d → No pair found"):format(test.target))
  end
end


