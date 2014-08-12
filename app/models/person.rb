class Person < ActiveRecord::Base
  has_many :steps, dependent: :destroy

  def completed?
    name && dni
  end


end
