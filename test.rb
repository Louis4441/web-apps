suits = ["hearts", "spades", "clubs", "diamonds"]
ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]
values = {"2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9, "10": 10, "jack": 11, "queen": 12, "king": 13, "ace": 14}
cards = []

for suit in suits
    for rank in ranks
        new = "#{rank}_of_#{suit}" 
        if not cards.include?(new)
            cards.append(new)        
        end
    end
end

card1 = cards.sample
card1_rank = card1.split("_")[0]
card1_suit = card1.split("_")[2]

card2 = cards.sample
card2_rank = card2.split("_")[0]
card2_suit = card2.split("_")[2]

if values[:"#{card1_rank}"] > values[:"#{card2_rank}"]
    higher = "The winner is the #{card1_rank} of #{card1_suit.capitalize()}!"
elsif values[:"#{card1_rank}"] < values[:"#{card2_rank}"]
    higher = "The winner is the #{card2_rank} of #{card2_suit.capitalize()}!"
else
    higher = "It's a tie"
end

puts higher