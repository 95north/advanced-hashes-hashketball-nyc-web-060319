
def num_points_scored(player_name)			# WORKING VERSION
# takes in an argument of a player's name and returns the number of points scored for that player.
	output = ""

	game_hash.each do |h_or_a, team_infos|
		# players.each do |player, stats|
		# 	if player == player_name
		# 		puts "!!! "
		# 		output = game_hash[h_or_a][:players][player_name][points]
		# 	end
		# end
		# if players.include?(player_name)
		team_infos.each do |info_type, stats|
			if info_type == :players
				puts info_type
				puts "reached here"
				#if :players.values.include?(player_name)
				#if info_type.values.include?(player_name)
				stats.each do |stat, stat_value|
					print "Stat is : "
					puts stat

					if stat.to_s === player_name
					
						puts "!!! "
		 				# output = stat.values
		 				output = game_hash[h_or_a][:players][stat][:points]	 # Was player_name instead of stat, didn't work
		 			end
		 		end
		 	end
		end 
	end

	puts "num_points_scored is: "
	puts output
	return output
end





def num_points_scored(player_name)
# takes in an argument of a player's name and returns the number of points scored for that player.
	output = ""

	game_hash.each do |h_or_a, team_infos|
		# players.each do |player, stats|
		# 	if player == player_name
		# 		puts "!!! "
		# 		output = game_hash[h_or_a][:players][player_name][points]
		# 	end
		# end
		# if players.include?(player_name)
		team_infos.each do |info_type, stats|
			if info_type == :players
				puts info_type
				puts "reached here"
				#if :players.values.include?(player_name)
				#if info_type.values.include?(player_name)
				stats.each do |stat, stat_value|
					print "Stat is : "
					puts stat

					if stat === player_name
					
						puts "!!! "
		 				output = game_hash[h_or_a][:players][player_name][:points]	
		 			end
		 		end
		 	end
		end 
	end

	puts "num_points_scored is: "
	puts output
	return output
end







def num_points_scored(player_name)
# takes in an argument of a player's name and returns the number of points scored for that player.
	output = ""

	game_hash.each do |h_or_a, players|
		# players.each do |player, stats|
		# 	if player == player_name
		# 		puts "!!! "
		# 		output = game_hash[h_or_a][:players][player_name][points]
		# 	end
		# end
		# if players.include?(player_name)
		players.each do |player, stats|
			if players.keys.include?(player_name)
				puts "!!! "
		 		output = game_hash[h_or_a][:players][player_name][:points]	
		 	end
		end 
	end

	puts "num_points_scored is: "
	puts output
	return output
end








# Write your code here!
# Starting data structure

def game_hash 

game_hash =	{
	home: {
		team_name: "",
		colors: [],  			#array of strings
		players: {
			player_name {
			number:
			shoe:
			points:
			rebounds:
			assists:
			steals:
			blocks:
			slam_dunks:
			}
		}
	}, 

	away: {
		team_name: "",
		colors: [],  		#array of strings
		players: {
			player_name {
			number:
			shoe:
			points:
			rebounds:
			assists:
			steals:
			blocks:
			slam_dunks:
			}
		}

	}
}



end






###########


	longest_name = 0
	most_steals = 0


	game_hash.each do |h_or_a, team_infos|
		team_infos.collect do |info_type, stats|
			if (info_type == :players)
				stats.each do |stat, stat_value|
					if game_hash[h_or_a][:players][stat][:steals] > most_steals
						most_steals = game_hash[h_or_a][:players][stat][:steals]
						most_steals_name = game_hash[h_or_a][:players][stat]
						puts most_steals_name
					end			
				end
			end
		end
	end

	game_hash.each do |h_or_a, team_infos|
		team_infos.collect do |info_type, stats|
			if (info_type == :players)
				stats.each do |stat, stat_value|
					puts ("Stat this loop is  #{stat} .   ")
					puts ("game_hash[h_or_a][:players][stat].to_s  is  #{game_hash[h_or_a][:players][stat].to_s} .   ")
					if game_hash[h_or_a][:players][stat]['$'].to_s.length > longest_name
						longest_name = game_hash[h_or_a][:players][:stat]['$']

					end			
				end
			end
		end
	end



# This also did not work ultimately
		game_hash.each do |h_or_a, team_infos|
		team_infos.collect do |info_type, stats|
			if (info_type == :players)
				#puts ("Trying to access name : #{info_type.flatten[1] } ") 	#Undefined method 'flatten' for :players:symbol
				# stats.flatten[1]. #> {:number=>4, :shoe=>18, :points=>10,, etc
				stats.each_key.with_index do |(stat, stat_value), index|
					stats.each do |stat, stat_value|
						#puts ("Stat this loop is  #{stat} .   ")
						#print ("game_hash[h_or_a][:players][stat].to_s  is  #{game_hash[h_or_a][:players][stat].to_s} .   ")

						if game_hash[h_or_a][:players][stat].flatten[1] > longest_name
							longest_name = game_hash[h_or_a][:players][stat].flatten[1]
							puts("Longest name is :  #{longest_name}")
						end
					end			
				end
			end
		end
	end





		### THINGS TO TRY: 



	#. clients.map{ |key, _| key if clients[key] == {"client_id"=>"2180"} }.compact 
	# This will return all occurences of given value. 
	# The underscore means that we don't need key's value ...
	# to be carried around so that way it's not being assigned to a variable. 
	# The array will contain nils if the values doesn't match - that's why I put #compact at the end.

	#Use to return the player names, then calc length of each array item!! 
 # This will find all the values for a key in a hash rather than the first match.




## OLDER ATTEMPTS AT THE LONGEST NAME PORTION : 





# def long_name_steals_a_ton?
# 	 #  returns true if the player with the longest name had the most steals
# 	longest_name = 0
# 	most_steals = 0


# 	game_hash.each do |h_or_a, team_infos|
# 		team_infos.collect do |info_type, stats|
# 			if (info_type == :players)
# 				stats.each do |stat, stat_value|
# 					if game_hash[h_or_a][:players][stat][:steals] > most_steals
# 						most_steals = game_hash[h_or_a][:players][stat][:steals]
# 						most_steals_name = game_hash[h_or_a][:players][stat]
# 						puts most_steals_name
# 					end			
# 				end
# 			end
# 		end
# 	end

# 	game_hash.each do |h_or_a, team_infos|
# 		team_infos.collect do |info_type, stats|
# 			if (info_type == :players)
# 				stats.each do |stat, stat_value|
# 					puts ("Stat this loop is  #{stat} .   ")
# 					puts ("game_hash[h_or_a][:players][stat].to_s  is  #{game_hash[h_or_a][:players][stat].to_s} .   ")
# 					if game_hash[h_or_a][:players][stat]['$'].to_s.length > longest_name
# 						longest_name = game_hash[h_or_a][:players][:stat]['$']

# 					end			
# 				end
# 			end
# 		end
# 	end


