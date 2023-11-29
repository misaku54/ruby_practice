# 論理和での求め方
strs = gets.split(' ')
t, n = strs[0].to_i, strs[1].to_i
m = Array.new(n)
m_t = Array.new(n+1)
n.times {|i|
    m[i] = gets.to_i
}

m_t[0] = 0
n.times {|i|
    m_t[i+1] = m[i]+m_t[i]
}

ans = m_t[t] - m_t[0]
(n-t).times{|i|
    tmp = m_t[i+1+t] - m_t[i+1]
    if ans < tmp
       ans = tmp
    end
}

puts ans