class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  UnsupportedOperation = Class.new(StandardError)

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if self.operand_wrong_type(first_operand, second_operand)
    raise UnsupportedOperation if self.operant_invalid(operation)
    return "Division by zero is not allowed." if self.dividing_by_zero(operation, first_operand, second_operand)
    result = first_operand.send(operation, second_operand)
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
  
  def self.operant_invalid(operation)
    !ALLOWED_OPERATIONS.include?(operation)
  end
  
  def self.dividing_by_zero(operation, first_operand, second_operand)
    operation == '/' && (first_operand == 0 || second_operand == 0) 
  end
  
  def self.operand_wrong_type(first_operand, second_operand)
    first_operand.kind_of?(String) || second_operand.kind_of?(String)
  end
  
  private_class_method :operant_invalid, :dividing_by_zero, :operand_wrong_type
end
