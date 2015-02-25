class Variable < Struct.new(:name)
  include Inspector

  def reduce(environment)
    environment[name]
  end

  def reducible?
    true
  end

  def to_s
    name.to_s
  end
end
