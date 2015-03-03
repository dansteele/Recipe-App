Given(/^a calculator object exists$/) do
  @calculator = Calculator.new
end

When(/^I input (\d+)$/) do |number|
  @calculator << number
end

When(/^I press "(.*?)"$/) do |command|
  case command
    when "+"
      @calculator.plus
    when "-"
      @calculator.minus
    when "*"
      @calculator.times
    when "/"
      @calculator.divide
    when "="
      @result = @calculator.equals
    end
end

Then(/^I should get (\d+)$/) do |answer|
  assert_equal answer.to_i, @result 
end
