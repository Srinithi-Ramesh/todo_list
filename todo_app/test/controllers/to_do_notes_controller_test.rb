require 'test_helper'

class ToDoNotesControllerTest < ActionController::TestCase
  setup do
    @to_do_note = to_do_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:to_do_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create to_do_note" do
    assert_difference('ToDoNote.count') do
      post :create, to_do_note: { done: @to_do_note.done, notes: @to_do_note.notes, title: @to_do_note.title, user_id: @to_do_note.user_id }
    end

    assert_redirected_to to_do_note_path(assigns(:to_do_note))
  end

  test "should show to_do_note" do
    get :show, id: @to_do_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @to_do_note
    assert_response :success
  end

  test "should update to_do_note" do
    patch :update, id: @to_do_note, to_do_note: { done: @to_do_note.done, notes: @to_do_note.notes, title: @to_do_note.title, user_id: @to_do_note.user_id }
    assert_redirected_to to_do_note_path(assigns(:to_do_note))
  end

  test "should destroy to_do_note" do
    assert_difference('ToDoNote.count', -1) do
      delete :destroy, id: @to_do_note
    end

    assert_redirected_to to_do_notes_path
  end
end
