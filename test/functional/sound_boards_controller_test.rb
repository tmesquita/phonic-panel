require 'test_helper'

class SoundBoardsControllerTest < ActionController::TestCase
  setup do
    @sound_board = sound_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sound_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sound_board" do
    assert_difference('SoundBoard.count') do
      post :create, sound_board: { name: @sound_board.name, user_id: @sound_board.user_id }
    end

    assert_redirected_to sound_board_path(assigns(:sound_board))
  end

  test "should show sound_board" do
    get :show, id: @sound_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sound_board
    assert_response :success
  end

  test "should update sound_board" do
    put :update, id: @sound_board, sound_board: { name: @sound_board.name, user_id: @sound_board.user_id }
    assert_redirected_to sound_board_path(assigns(:sound_board))
  end

  test "should destroy sound_board" do
    assert_difference('SoundBoard.count', -1) do
      delete :destroy, id: @sound_board
    end

    assert_redirected_to sound_boards_path
  end
end
