require 'pry'

class Person
  attr_reader :first_name, :last_name, :middle_name

  def initialize(first_name, last_name = nil, middle_name = nil)
    name_array = first_name.split(' ')
    if middle_name.nil? && !name_array[2].nil?
      @first_name = name_array[0]
      @last_name = name_array[2]
      @middle_name = name_array[1]
    elsif middle_name.nil? && last_name.nil?
      @first_name = name_array[0]
      @last_name = name_array[1]
    else
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name
    end
  end

end

binding.pry
