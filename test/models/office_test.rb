require 'test_helper'

class OfficeTest < ActiveSupport::TestCase

  test 'Mesa de entrada' do
    office = Office.start_office
    assert office.class == Office
  end

end