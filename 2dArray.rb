# Given a  2D Array, :

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# An hourglass in  is a subset of values with indices falling in this pattern in 's graphical representation:

# a b c
#   d
# e f g
# There are  hourglasses in . An hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum. The array will always be .

# Example


# -9 -9 -9  1 1 1 
#  0 -9  0  4 3 2
# -9 -9 -9  1 2 3
#  0  0  8  6 6 0
#  0  0  0 -2 0 0
#  0  0  1  2 4 0
# The  hourglass sums are:

# -63, -34, -9, 12, 
# -10,   0, 28, 23, 
# -27, -11, -2, 10, 
#   9,  17, 25, 18
# The highest hourglass sum is  from the hourglass beginning at row , column :

# 0 4 3
#   1
# 8 6 6
# Note: If you have already solved the Java domain's Java 2D Array challenge, you may wish to skip this challenge.

# Function Description

# Complete the function hourglassSum in the editor below.

# hourglassSum has the following parameter(s):

# int arr[6][6]: an array of integers
# Returns

# int: the maximum hourglass sum
# Input Format

# Each of the  lines of inputs  contains  space-separated integers .

# Constraints

# Output Format

# Print the largest (maximum) hourglass sum found in .

# Sample Input

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0
# Sample Output

# 19
# Explanation

#  contains the following hourglasses:

# image

# The hourglass with the maximum sum () is:

# 2 4 4
#   2
# 1 2 4



def hourglassSum(arr)
    # lowest possible sum
    max = -63
    # loop 4 times through first 4 rows of arrays
    # starting position needs to be declared for each row
    # empty array needs to hold new values each time a loop is made so sum can be found
    row = 0
    while row < 4 do
        toprow = 0
        middlerow = 1
        bottomrow = 0
        while toprow < 4 do
            hourglassarr = []
            hourglassarr << arr[row].slice(toprow,3)
            hourglassarr << arr[row + 1].slice(middlerow,1)
            hourglassarr << arr[row + 2].slice(bottomrow,3)
            hourglassarr.flatten.sum > max ? max = hourglassarr.flatten.sum : max
            toprow += 1
            middlerow += 1
            bottomrow += 1
        end
        toprow = 0
        row += 1
    end
    return max
end

arr = [[1,3,4,2,3,1],[4,2,5,4,2,2],[3,2,1,4,3,4],[6,3,6,6,4,3],[6,4,2,2,4,5],[5,6,5,1,2,1]]
p hourglassSum(arr)