def game_hash 

game_hash =	{
	home: {
		team_name: "Brooklyn Nets",
		colors: ["Black", "White"],  			#array of strings
		players: {
			"Alan Anderson": {
				number: 0, 
				shoe: 16, 
				points: 22, 
				rebounds: 12, 
				assists: 12, 
				steals: 3, 
				blocks: 1, 
				slam_dunks: 1
			}, 

			"Reggie Evans": {
				number: 30,
				shoe: 14, 
				points: 12, 
				rebounds: 12, 
				assists: 12, 
				steals: 12, 
				blocks: 12, 
				slam_dunks: 7
			},
			"Brook Lopez": {
				number: 11, 
				shoe: 17, 
				points: 17, 
				rebounds: 19, 
				assists: 10, 
				steals: 3, 
				blocks: 1, 
				slam_dunks: 15
			},
			"Mason Plumlee": {
				number: 1, 
				shoe: 19, 
				points: 26, 
				rebounds: 12, 
				assists: 6, 
				steals: 3, 
				blocks: 8, 
				slam_dunks: 5
			},
			"Jason Terry": {
				number: 31, 
				shoe: 15, 
				points: 19, 
				rebounds: 2, 
				assists: 2, 
				steals: 4, 
				blocks: 11, 
				slam_dunks: 1
			}

		}
	}, 

	away: {
		team_name: "Charlotte Hornets",
		colors: ["Turquoise", "Purple"],  		#array of strings
		players: {
			"Jeff Adrien": {
				number: 4, 
				shoe: 18, 
				points: 10, 
				rebounds: 1, 
				assists: 1, 
				steals: 2, 
				blocks: 7, 
				slam_dunks: 2
			}, 

			"Bismack Biyombo": {
				number: 0, 
				shoe: 16, 
				points: 12, 
				rebounds: 4, 
				assists: 7, 
				steals: 7, 
				blocks: 15, 
				slam_dunks: 10
			},
			"DeSagna Diop": {
				number: 2, 
				shoe: 14, 
				points: 24,  
				rebounds: 12, 
				assists: 12, 
				steals: 4, 
				blocks: 5, 
				slam_dunks: 5
			},
			"Ben Gordon": {
				number: 8, 
				shoe: 15, 
				points: 33, 
				rebounds: 3, 
				assists: 2, 
				steals: 1, 
				blocks: 1, 
				slam_dunks: 0 
			},
			"Brendan Haywood": {
				number: 33, 
				shoe: 15, 
				points: 6, 
				rebounds: 12, 
				assists: 12, 
				steals: 22, 
				blocks: 5, 
				slam_dunks: 12
			}
		}

	}
}

return game_hash

end




def long_name_steals_a_ton?
	 #  returns true if the player with the longest name had the most steals
	longest_name_length = 0
	longest_name_name = []
	most_steals = 0
	most_steals_name = []
	all_players = []				# Is all players, home & away. Renamed! 
	steals_array = []
	true_flag = nil


	# OKAY, prints  -- calculates max # of steals,  currently array w 3 / was one name (winner or tie possible...)
	game_hash.each do |h_or_a, team_infos|
		team_infos.collect do |info_type, stats|
			if (info_type == :players)
				stats.each do |stat, stat_value|
					if game_hash[h_or_a][:players][stat][:steals] > most_steals
						most_steals = game_hash[h_or_a][:players][stat][:steals]
						#most_steals_name = game_hash[h_or_a][:players].keys 	#> [:"Alan Anderson", :"Reggie Evans", :"Brook Lopez", :"Mason Plumlee", :"Jason Terry"]
						most_steals_name = stat
						puts("one players w Max steals name : #{most_steals_name}")
					end			
				end
			end
		end
	end




# compare to each player's # / steals to the max steals and put all winner / (winners, if tie) to an array
# Prev. version: put all players w a winning # steals in an array (to accomodate ties). 
	game_hash.each do |h_or_a, team_infos|
		team_infos.collect do |info_type, stats|
			if (info_type == :players)
				# stats.each do |stat, stat_value|
				# 	 most_steals = game_hash[h_or_a][:players][stat][:steals].max_by {|stat2, statval2 | stat2.to_s.to_f <=> statval2 }
				all_players.each do |name| 			# ONLY HAS ONE ITEM IN PIPES! | |
					if game_hash[h_or_a][:players][name][:steals] = most_steals
						steals_array << name
						#most_steals = game_hash[h_or_a][:players][stat][:steals]
						#most_steals_name = game_hash[h_or_a][:players].keys 	#> [:"Alan Anderson", :"Reggie Evans", :"Brook Lopez", :"Mason Plumlee", :"Jason Terry"]
						# most_steals_name << stat
						puts("Most steals V2**  name : #{steals_array}")
					end			
				end
			end
		end
	end





	game_hash[:home][:players].each do |k, v|
		#puts ("v.flatten is -- #{k.to_s}")
		all_players << k.to_s 			#v.flatten 
	end
	game_hash[:away][:players].each do |k, v|
		all_players << k.to_s
	end

	puts ("all_players is :   #{all_players}")


# Attempt to get all max values of steals
# max = my_hash.values.max
# Hash[my_hash.select { |k, v| v == max}]


# game_hash =	{
# 	home: {
# 		team_name: "Brooklyn Nets",
# 		colors: ["Black", "White"],  			#array of strings
# 		players: {
# 			"Alan Anderson": {
# 				number: 0, 
# 				shoe: 16, 


	game_hash.each do |h_or_a, team_infos|
		team_infos.collect do |info_type, names|
			if (info_type == :players)
				# stats.each do |stat, stat_value|
				# 	 most_steals = game_hash[h_or_a][:players][stat][:steals].max_by {|stat2, statval2 | stat2.to_s.to_f <=> statval2 }
				all_players.each do |name, stats| 
					steals_array = game_hash[h_or_a][:players][name][:steals].select { |stats, stat_val | stat_val == max }	#undefined method `[]' for nil:NilClass

						puts("Most steals V3**  array names : #{steals_array}")
					#end			
				end
			end
		end
	end



# ERROR - doesn't find away players, returns nil. // Create parallel array just holding each player's max # of steals. 

	all_players.each do |name|
		puts("number of steals is    #{game_hash[:home][:players][name.to_sym][:steals]},  name is- #{ name}")		
			steals_array << game_hash[:home][:players][name.to_sym][:steals]
		
	end



	all_players.each do |name|
		puts("Name.length is    #{name.length},  name is- #{name}")		
		if name.length > longest_name_length
			longest_name_length = name.length
			longest_name_name << name
		end
	end


	#### NEED TO DO SORT BY LENGTH, THEN CALC LENGTH OF EACH, RETURN ALL MAX TIES TO NEW ARRAY
	longest_name_name = all_players.max(1) { |name, b| name.length <=> b.length}
	longest_name_length = longest_name_name.length

	print "Longest Name Length Is : "
	puts  longest_name_length

	print "Final Longest Name Is : "
	puts  longest_name_name

	print " Most Steals Is : "
	puts most_steals_name

	longest_name_name.each do |name|
		if most_steals_name.include?(name)
			true_flag = true

		end
	end
	puts true_flag
	return true_flag
end


print(long_name_steals_a_ton?())
