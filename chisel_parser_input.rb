require 'pry'

input_file = "# My Life in Desserts

## Chapter 1: The Beginning

You just *have* to try the cheesecake, he said. Ever since it appeared in **Food & Wine** this place has been packed every night.

My favorite cuisines are:

* Sushi
* Mexican
* American

1. Sushi
2. Mexican
3. Fish"

text_split_by_line_break = input_file.split("\n\n") # lines.map(&:chomp) split by line break
binding.pry
