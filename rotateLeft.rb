# A left rotation operation on an array of size "n" shifts each of the array's elements 1 unit to the left. Given an integer "d" rotate the array that many steps left and return the result.

# Example
# d = 2
# arr = [1,2,3,4,5]
# After 2 rotations, arr = [3,4,5,1,2]

# Function Description

# Complete the rotateLeft function in the editor below.

# rotateLeft has the following parameters:

# int d: the amount to rotate by
# int arr[n]: the array to rotate
# Returns

# int[n]: the rotated array
# Input Format

# The first line contains two space-separated integers that denote "n", the number of integers, and "d", the number of left rotations to perform.
# The second line contains "n" space-separated integers that describe arr[].

# Constraints
# 1 < n < 10^*5
# 1 < d < n
# 1< a[i] < n < 10^*6

# Sample Input

# 5 4
# 1 2 3 4 5
# Sample Output

# 5 1 2 3 4
# Explanation

# To perform d=4 left rotations, the array undergoes the following sequence of changes:
# [1,2,3,4,5] => [2,3,4,5,1] => [3,4,5,1,2] => [4,5,1,2,3] => [5,1,2,3,4]

def rotateLeft(d, arr)
    # shift the first element and push it to the end of the array
    while d > 0 do 
        arr.push(arr.shift)
        d -= 1
    end
    return arr
end

p rotateLeft(2, [1, 2, 3, 4, 5])