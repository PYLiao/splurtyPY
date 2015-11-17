class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 140, :minimum => 3}
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3}

def unique_tag
	abbr = self.author.split(" ").collect do |sub_string|
		sub_string[0]
		#pick 0th element
	end

	abbr.join + "#" + self.id.to_s
end




end



# Array#each just takes each element and puts it into the block, then returns the original array. 
# Array#collect takes each element and puts it into a new array that gets returned:

# [1, 2, 3].each { |x| x + 1 }    #=> [1, 2, 3]
# [1, 2, 3].collect { |x| x + 1 } #=> [2, 3, 4]