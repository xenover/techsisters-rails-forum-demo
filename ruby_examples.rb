## variable definitions

number = 1
string = 'word'
array = []
hash = {}
boolean = true

## conditionals

# if-else

if boolean
  puts 'yes!'
else
  puts 'no'
end

# if-elsif-else

if number == 0
  puts 'zero'
elsif number == 1
  puts 'one'
else
  puts 'neither zero nor one'
end

## case when

case string
when 'word' then puts 'is a word'
when 'bird' then puts 'is a bird'
else puts 'not bird nor word'
end

## logical operations

value_semantic = true or false and true
value_logical = true || false && true

## iterations

# each
array = [1,2,3,4,5]
array.each do |num|
  puts num
end

# for in (rarely used)
for num in array
  puts num
end

# while
i = 10
while i < 10
  puts i
  i += 1
end

## classes

class TestClass
  def initialize(test_param)
    @test_param = test_param
  end

  # these two can be replaced with attr_accessor :test_param
  def test_param # same as having attr_reader :test_param
    @test_param
  end

  def test_param=(new_value) # same as having attr_writer :test_param
    @test_param = new_value
  end

  def unset_rest_param!
    @test_param = nil
  end

  def test_param_set?
    test_param != nil # same as @test_param.nil? or @test_param.present? for empty string as well
  end
end

test_instance = TestClass.new('value')
test_instance.test_param
test_instance.test_param = 'other value'
test_instance.test_param
test_instance.test_param_set?
test_instance.unset_test_param!
test_instance.test_param_set?
