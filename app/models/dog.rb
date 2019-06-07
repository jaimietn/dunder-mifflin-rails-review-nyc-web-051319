class Dog < ApplicationRecord
  has_many :employees

  def owners
    Employee.where("dog_id == '#{self.id}'")
  end

end
#matching dogs to owners with that dog_id
