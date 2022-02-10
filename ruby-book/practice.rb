# sampleにarrayの値を10倍したものを配列で代入する
def a
  array = [1,2,3,4]
  sample = []
  array.each{|n| sample<< n*10}
  sample.each{|m| m}
end
# sampleにarrayの値を10倍したものを代入する
def b
  array = [1,2,3,4]
  sample = array.map{|n| n*10}
  sample.each{|m| m}
end
# sampleにブロック処理に当てはまったもの（真）を代入する
def c
  array = [1,2,3,4]
  sample = array.select{|n| n.even?}
  sample.each{|m| m}
end

# sampleにブロック処理にあてはまらないもの（偽）を代入する
def d
  array = [1,2,3,4]
  sample = array.reject{|n| n.even?}
  sample.each{|m| m}
end
# ブロック処理に最初に当てはまったものを取り出す
def e
  array = [1,2,3,4]
  array.find{|n| n.even?}
end

def f(num)
  range = 1 .. 5
  range.include?(num)
  range1 = 1 ... 5
  range1.include?(num)
end

def g
  
end

puts f(5)