card_one = :jack
card_two = :joker
card_three = :joker
a = 0
b = 0

10000.times do

	card_array = [card_one, card_two, card_three]

	card_array.shuffle!

	selection = rand(3)

	selected_card = card_array.delete_at selection

	if card_array[0] != :jack
	   card_array.delete_at 0 
	else 
		card_array.delete_at 1
	end  

	if card_array[0] == :jack
		# puts "You were right to swap!"
		a = a + 1
	else
		# puts "Should have swapped, Boyo!"
		b = b + 1
	end
end

puts "You were right to swap #{a}"
puts "You were right to keep #{b}"