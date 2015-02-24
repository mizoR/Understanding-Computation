class Number < Struct.new(:value)
  include Inspector

  def to_s
    value.to_s
  end
end
