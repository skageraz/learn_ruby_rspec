#write your code here

def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array=[a,b])
  array.sum
end

def multiply(a,b)
  a * b
end

def power(a,b)
  a ** b
end

def factorial(a)
  (1..a).inject(1,:*)
end
