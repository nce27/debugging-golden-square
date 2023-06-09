def get_most_common_letter(text)
  counter = Hash.new(0)
  #p counter
  text.chars.each do |char|
      counter[char] += 1 unless char == " " 
  end
  p counter
  counter.to_a.sort_by { |key, value| value }[-1][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")
#p "o"

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
