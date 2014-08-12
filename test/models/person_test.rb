require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  test 'Persona completa' do
    person = Person.new(name: 'pepe', dni: '123456')
    assert person.completed?
  end

  test 'Persona incompleta' do
    person = Person.new(email: 'mail@mail.com')
    assert !person.completed?
  end 


end