
def a
  array = [1,2,3,4]
  sample = []
  array.each{|n| sample<< n*10}
  sample.each{|m| m}
end

def b
  array = [1,2,3,4]
  sample = array.map{|n| n*10}
  sample.each{|m| m}
end

def c
  array = [1,2,3,4]
  sample = array.select{|n| n.even?}
  sample.each{|m| m}
end


def d
  array = [1,2,3,4]
  sample = array.reject{|n| n.even?}
  sample.each{|m| m}
end

def e
  array = [1,2,3,4]
  array.find{|n| n.even?}
end

puts e()