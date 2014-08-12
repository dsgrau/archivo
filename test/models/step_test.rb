require 'test_helper'

class StepTest < ActiveSupport::TestCase

  test 'creando step' do
    step = Step.create(person_email: 'person@mail.com')
    assert step.person.email == 'person@mail.com'
  end


end