require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase

  test 'Cuando creamos file record' do
    file_record = FileRecord.create
    assert file_record.steps.count == 1
  end

end
