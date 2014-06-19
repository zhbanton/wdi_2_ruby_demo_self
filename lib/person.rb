
# Define a Person class
class Person

  # Funkiest thing you will ever encounter
  # class << self
  #   inside here everything is a class variable or method
  # end

  # Class variable
  @@all_people = []
  @@person_count = 0

  # Class method- NOTICE THE SELF
  def self.all_people
    @@all_people
  end

  def self.count
    @@all_people.size
  end

  attr_reader :first_name, :status
  attr_accessor :last_name

  def initialize(fname, lname)
    @first_name, @last_name = fname, lname
    @status = 'inactive'
    @@all_people << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    %x{ say "#{full_name} has changed their status to #{status}"} #x - invokes a unix command on a mac- say command- makes the computer speak
  end

  def signed_contract
    # Problem:
    # Will not call the setter method to and notify, or say, that the status has
    # changed!
    #@status = 'active'

    # Problem:
    # This will create a variable, status, that is ONLY local to this method!
    # status = 'active'

    # OK, we are going to refer to this object, using self, and call the status method.
    # This will notify, or say, that theh Person's status has changed.
    self.status = 'active'
  end
end
