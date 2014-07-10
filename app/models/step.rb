class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office

  def first_step
    self.office = Office.start_office
    save
  end

  def self.archivate
    step.create(office: Office.archivate_office)
  end



end
