class Multiply < Struct.new(:left, :right)
  include Inspector

  def reduce
    case
    when left.reducible?  then self.class.new(left.reduce, right)
    when right.reducible? then self.class.new(left, right.reduce)
    else
      Number.new(left.value * right.value)
    end
  end

  def reducible?
    true
  end

  def to_s
    "#{left} * #{right}"
  end
end
