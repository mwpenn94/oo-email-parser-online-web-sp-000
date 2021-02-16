# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses
 
  def self.parse(csv_data)
    rows = csv_data.split()
    # For each row, let's collect a Person instance based on the data
    people = rows.collect do |row|
      # Split the row into 3 parts, name, age, company, at the ", "
      data = row.split(", ")
       = data[0]
      age = data[1]
      company = data[2]
 
      # Make a new instance
      person = self.new # self refers to the Person class. This is Person.new
      # Set the properties on the person.
      person.name = name
      person.age = age
      person.company = company
      # Return the person to collect
      person
    end
    # Return the array of newly created people.
    people
  end
end