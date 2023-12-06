=begin
    There is a new mobile game that starts with consecutively numbered clouds. Some of the clouds are 
    thunderheads and others are cumulus. The player can jump on any cumulus cloud having a number that 
    is equal to the number of the current cloud plus  or . The player must avoid the thunderheads. 
    Determine the minimum number of jumps it will take to jump from the starting postion to the last 
    cloud. It is always possible to win the game.

    For each game, you will get an array of clouds numbered  if they are safe or  if they must be avoided.
=end

def jumpingOnClouds(c)
    index = 0
    last_index = c.length - 1
    jumps = 0

    while index < last_index do
        next_item = c[index + 1]
        
        # 2nd last index or less
        if index < last_index - 1
            next_next_item = c[index + 2]
            if next_next_item == 0
                index += 2
                jumps += 1
                next
            elsif next_item == 0
                index += 1
                jumps += 1
                next
            end
        elsif next_item == 0
            index += 1
            jumps += 1
        else
            return jumps
        end    
    end 
    jumps   
end

puts jumpingOnClouds([0, 0, 0, 1, 0, 0,1,0])