class LessThan < Struct.new(:left, :right)
  include Inspector

  def reducible?
    true
  end

  def reduce
    case
    when left.reducible?  then LessThan.new(left.reduce, right)
    when right.reducible? then LessThan.new(left, right.reduce)
    else
      Boolean.new(left.value < right.value)
    end
  end

  def to_s
    "#{left} < #{right}"
  end
end
