# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses
 
  def self.parse(csv_data)
    rows = csv_data.split("\n")
    # For each row, let's collect a EmailAddressParser instance based on the data
    email_addreses = rows.collect do |row|
      # Split the row into separate email addreses, at the ", " and " "
      data = row.split(", ", " ")
      
      # Make a new instance
      email = self.new # self refers to the EmailAddressParser class. This is EmailAddressParser.new
      # Return the person to collect
      email
    end
    # Return the array of newly created people.
    email_addreses
  end
end