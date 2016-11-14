# Julianna Mikucka, projekt nr 1 Sortowanie przez wstawianie
def sort(arr)
  size = arr.length
  (1...size).each do |i|
    i.downto(1) do |j|
      if arr[j] < arr[j - 1]
        exchange(arr, j, j - 1)
      else
        break
      end
    end
  end
end

def sorted?(arr)
  (1..arr.length).each do |i|
    return false if less(arr[i], arr[i - 1])
    return true
  end
end

def exchange(arr, i, j)
  arr[i], arr[j] = arr[j], arr[i]
end

def less(lhs, rhs)
  lhs < rhs
end

def print_elements(arr)
  arr.each { |it| print it, ' ' unless it.nil? }
  print "\n"
end
