def wordSorting pharse
  arr = pharse.split(" ")
  arr.each do |e|
    #e.gsub('.', '')
    e.delete!(".")
  end
  sortArr(arr)
end

def sortArr arr
  #arr.sort { |a,b| a.capitalize <=> b.capitalize }
  arr.sort_by { |word|
    word.downcase
  }
end

arr = wordSorting("Have a nice day.")
puts arr

# one line version
#string.gsub('.', '').split(' ').sort{ |a,b| a.capitalize <=> b.capitalize }
