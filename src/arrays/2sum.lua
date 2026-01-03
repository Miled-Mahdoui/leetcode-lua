--- Finds two indices i, j such that nums[i] + nums[j] == target (brute force). 0(n^2) 2 loops, 0(1) space
local function two_sum_bruteforce(nums, target)
  for i = 1, #nums do
    for j = i + 1, #nums do
      local sum = nums[i] + nums[j]
      if sum == target then
        return nums[i], nums[j]
      end
    end
  end
  return nil, nil
end

-- Better algorithm, uses O(n) time and 0(n) space complexity, space complexity is worse

local function two_sum_maping(nums, target)
  local seen = {}
  for i = 1, #nums do
    local complement = target - nums[i]

    if seen[complement] ~= nil
    then
      return complement, nums[i]
    else
      seen[nums[i]] = i
    end
  end
end


--Test cases
local test_cases = {
  { nums = { 2, 7, 11, 15 }, target = 9 },
  { nums = { 3, 2, 4 },      target = 6 },
  { nums = { 1, 2, 3 },      target = 10 },
}



--Test case execution
for _, test in ipairs(test_cases) do
  local i1, j1 = two_sum_maping(test.nums, test.target)
  local i2, j2 = two_sum_bruteforce(test.nums, test.target)

  print("Mapping:")
  if i1 and j1 then
    print(i1 .. " and " .. j1)
  else
    print("No pair found")
  end
  print("Brute force")
  if i2 and j2 then
    print(i2 .. " and " .. j2)
  else
    print("No pair found")
  end
end
