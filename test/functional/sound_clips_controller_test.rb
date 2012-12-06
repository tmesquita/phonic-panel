require 'test_helper'

class SoundClipsControllerTest < ActionController::TestCase
  setup do
    @sound_clip = sound_clips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sound_clips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sound_clip" do
    assert_difference('SoundClip.count') do
      post :create, sound_clip: { descriptions: @sound_clip.descriptions, sound_board_id: @sound_clip.sound_board_id, title: @sound_clip.title }
    end

    assert_redirected_to sound_clip_path(assigns(:sound_clip))
  end

  test "should show sound_clip" do
    get :show, id: @sound_clip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sound_clip
    assert_response :success
  end

  test "should update sound_clip" do
    put :update, id: @sound_clip, sound_clip: { descriptions: @sound_clip.descriptions, sound_board_id: @sound_clip.sound_board_id, title: @sound_clip.title }
    assert_redirected_to sound_clip_path(assigns(:sound_clip))
  end

  test "should destroy sound_clip" do
    assert_difference('SoundClip.count', -1) do
      delete :destroy, id: @sound_clip
    end

    assert_redirected_to sound_clips_path
  end
end
