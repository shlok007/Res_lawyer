# cook your code here
def fact (n)
    return (1..n).inject(:*)
end
def fibnacci
    n= gets.to_i
    print fact(n)
end
fibnacci.new

# cook your code here
def fact (n)
    return (1...n).inject(*)
end
def fibnacci
    n= gets.to_i
    print fact(n)
end
fibnacci.new