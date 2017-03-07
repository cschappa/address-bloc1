class Entry
  attr_accessor :name, :phone_number, :email

  def initialize(name, phone, email)
    @name, @phone_number, @email = name, phone, email
  end

  def to_s
    "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end
end
