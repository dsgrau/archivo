class Office < ActiveRecord::Base
  has_many :steps, dependent: :destroy
  validates :name, presence:true, length: { minimum: 2 }

  def self.start_office
    Office.find_or_create_by(name: 'mesa de entrada')
  end
  
  def archivate_office
    Office.find_or_create_by(name: 'archivo')
  end

end
