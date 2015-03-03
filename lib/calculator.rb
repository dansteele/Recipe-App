class Calculator

  def initialize
    @expression = []
  end

  def <<(number)
    @expression << number
  end

  def plus
    @expression << "+"
  end

  def minus
    @expression << "-"
  end

  def times
    @expression << "*"
  end

  def divide
    @expression << "/"
  end

  def equals
    eval @expression.join
  end

end