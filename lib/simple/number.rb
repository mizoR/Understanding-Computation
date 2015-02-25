class Number < Struct.new(:value)
  include Inspector

  def reducible?
    false
  end

  def to_s
    value.to_s
  end
end
