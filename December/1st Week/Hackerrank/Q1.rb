=begin
    Submissions	Leaderboard	Discussions	Editorial
    There is a large pile of socks that must be paired by color. 
    Given an array of integers representing the color of each sock, 
    determine how many pairs of socks with matching colors there are.
=end

def sockMerchant(arr)
    # Write your code here
    sock_count_by_color = Hash.new(0)
    total_pairs = 0
    # First step create a hash map with sock color as key its count as the value
    arr.each { |color| sock_count_by_color[color] += 1 }
    
    # now counting how many pairs are there in total
    sock_count_by_color.each do |color, count|
        color_pair = count/2.round()
        total_pairs += color_pair
    end
    
    total_pairs
end

