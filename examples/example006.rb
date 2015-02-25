Machine.new(
  Add.new(Variable.new(:x), Variable.new(:y)),
  {x: Number.new(3), y: Multiply.new(Number.new(2), Number.new(4))}
).run
