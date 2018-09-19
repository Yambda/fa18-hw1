class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE]
    a = a.sort.map{|i| i.to_i}
    if a[0] < 8 and a[0]%2 == 0
        sum = a[0] + 2
    else
        sum = 0
    end
    current = a[0]
    for i in 0..(a.length - 1)
        number = a[i] + 2
        if a[i] != current
            current = a[i]
            if number%2 == 0 and number < 10
                sum += number
            end
        end
    end
    return sum
  end
end
