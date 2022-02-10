
# DRYされていない
# DRY...Don't repeat yourself（繰り返し処理を避けること）
#リファクタリングする
# リファクタリング。。。外からの振る舞いを保ったまま理解や修正が簡単になるように内部のコードを改善すること
# rjust...第一引数に桁数、第二引数に空白以外の文字列を入れる　例）2.rjust(3,"0") = 002 となる
def to_hex_test(r,g,b)
  '#'+
  r.to_s(16).rjust(2,'0')+
  g.to_s(16).rjust(2,'0')+
  b.to_s(16).rjust(2,'0')
end

def to_hex(r,g,b)
  hex = '#'
  [r,g,b].each do |n|
    hex += n.to_s(16).rjust(2,'0')
  end
  hex
end
# リファクタリングされていない
def to_ints_test(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
  [r,g,b].each do |n|
    ints << n.hex
  end
  ints
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r,g,b].map{|n| n.hex}
end



puts to_ints('#0a141e')