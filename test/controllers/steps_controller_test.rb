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

end
