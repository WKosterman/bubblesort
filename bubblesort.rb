# frozen_string_literal: true

def bubble_sort(unsorted_numbers)
  loop do
    shuffeled = false
    unsorted_numbers.each_with_index do |v, i|
      next if i == unsorted_numbers.length - 1
      next if v <= unsorted_numbers[i + 1]

      shuffeled = true
      unsorted_numbers.delete_at(i)
      unsorted_numbers.insert(i + 1, v)
    end
    return unsorted_numbers if shuffeled == false
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])
