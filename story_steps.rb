Given /^the following stories exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    Story.create(attributes)
  end

end


