class LessThan < Struct.new(:left, :right)
  include Inspector

  def reducible?
    true
  end

  def reduce(environment)
    case
    when left.reducible?  then LessThan.new(left.reduce(environment), right)
    when right.reducible? then LessThan.new(left, right.reduce(environment))
    else
      Boolean.new(left.value < right.value)
    end
  end

  def to_s
    "#{left} < #{right}"
  end
end
