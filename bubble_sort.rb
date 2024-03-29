def bubble_sort(array)
    swap = true
    while swap do
        swap = false
        (array.length-1).times do |index|
            if array[index] > array[index + 1]
                array[index], array[index + 1] = array[index + 1], array[index]
                swap = true
            end
        end
    end
    return array
end

def bubble_sort_by(array)
    swap = true
    while swap do
        swap = false
        (array.length-1).times do |index|
            if yield( array[index], array[index + 1] ) > 0
                array[index], array[index + 1] = array[index + 1], array[index]
                swap = true
            end
        end
    end
    p array
end

numbers = [2, 6, 78, 54, 89, 65]

p bubble_sort(numbers)

bubble_sort_by(["hi","Microverse","hello","hey"]) do |left, right|
    left.length - right.length
end
