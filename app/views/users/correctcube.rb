# cook your code here
def fib (a, b)
    strin= lambda { |a,b| a.to_i + b.to_i }
    return strin.call(a**3, b**3)
end
def fibnacci
    n= gets.to_i
    print fib(n%10,n.to_s[0].to_i)
end
fibnacci.new