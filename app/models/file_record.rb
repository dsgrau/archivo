class FileRecord < ActiveRecord::Base

has_many :steps, dependent: :destroy
after_create :create_file_record

  def create_first_step
    steps.build.first_step
  end

  def archivate
    steps << Step.archivate
  end
  
end
