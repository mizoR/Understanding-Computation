class Multiply < Struct.new(:left, :right)
  include Inspector

  def to_s
    "#{left} * #{right}"
  end
end
