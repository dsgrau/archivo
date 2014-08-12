class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office

  before_save :find_email

  attr_accessor :person_email

  def first_step
    self.office = Office.start_office
    save
  end

  def self.archivate
    step.create(office: Office.archivate_office)
  end

  private

    def find_email
      self.person = Person.find_or_create_by(email: person_email)
    end


end
