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

def g(num)
  a,*b = num
  puts a
  puts b

end

def h(a)
  a.split('/').map{|n| n+"プログラミング言語"}
end

def i
  array = ["apple","orange","melon"]
  array.map.with_index(1){|f, n| n.to_s + ": " + f}
end

def j(num)
  array = [1,"松田",3,4,5,6]
  array.delete(num){'ng'}
end




def k
  text = "私の誕生日は1997年4月19日です"
  m = text.match(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  puts m[:year]
end

def l
  text = "私,の誕生日,は1---997,年4月1////9日です"
  puts text.gsub(/,|-|\//,'@')
end

def m
  users = []
  users << {first_name: "alice",last_name: "ruby", age: "20"}
  users << {first_name: "bob", last_name: "python", age: "30"}
  
  users.each do |user|
    puts user[:first_name]
  end
end


m()