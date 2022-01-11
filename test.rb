s_rika = [65,80,67,35,58,60,72,75,68,92,36,50,25,85,46,42,78,62,84,70]
s_eng = [44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84]

def std(arr_x)
  avg = arr_x.sum / arr_x.length
  arr1 = arr_x.map{|x|(x - avg) ** 2}
  return Math.sqrt(arr1.sum / arr_x.length.round(2))
end


def dev(arr_x)
  avg = arr_x.sum / arr_x.length
  arr1 = arr_x.map{|x|(x - avg) ** 2}
  std =  Math.sqrt(arr1.sum / arr_x.length)
  return arr_x.map{|x| ((x - avg) * 10 /  std + 50).round(2)}
end
p "sience ave"
p s_rika.sum.to_f/s_rika.length.to_f 
p "english ave"
p s_eng.sum.to_f/s_eng.length.to_f
p "sience all"
p s_rika.sum.to_f
p "english all"
p s_eng.sum.to_f
p "sience standard deviation"
p std(s_rika)
p "english standard deviation"
p std(s_eng)

  
p "sience deviation"
p dev(s_rika)
p "english deviation"
p dev(s_eng)


p "sience des"
p s_rika.sort.reverse
p "english des"
p s_eng.sort.reverse
