class StepsControllerTest < ActionController::TestCase
  def setup 
    sign_in users :emmet
  end

  test "step cuando la persona esta incompleta" do
    step_hash = { person: people(:incompleto) }
    step = Step.new(step_hash)
    post :create, step: step_hash
    assert_redirected_to edit_person_path(step.person)
  end

  #test "step cuando la persona esta completa" do
  #  step_hash = { person: people(:completo), file_record: file_records(:one)}
  #  step = Step.new(step_hash)
  #  post :create,  step: step_hash 
  #  assert_redirected_to file_record_path(step.file_record)
  #end

  test "cuando la persona incompleta" do
        
    post :create, step: { person_email: 'incompleto@mail.com' , file_record: file_records(:one)}
    person = Person.find_by(email: 'incompleto@mail.com')
    assert_redirected_to edit_person_path(person)

  end


end
