class Multiply < Struct.new(:left, :right)
  include Inspector

  def reducible?
    true
  end

  def to_s
    "#{left} * #{right}"
  end
end
