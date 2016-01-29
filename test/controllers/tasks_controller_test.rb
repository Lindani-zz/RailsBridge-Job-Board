require "test_helper"

class TasksControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  def task
    @task ||= tasks :one
  end
  def user
    sign_in @user
  end
  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Task.count") do
      post :create, task: { completed_at: task.completed_at, name: task.name }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  def test_show
    get :show, id: task
    assert_response :success
  end

  def test_edit
    get :edit, id: task
    assert_response :success
  end

  def test_update
    put :update, id: task, task: { completed_at: task.completed_at, name: task.name }
    assert_redirected_to task_path(assigns(:task))
  end

  def test_destroy
    assert_difference("Task.count", -1) do
      delete :destroy, id: task
    end

    assert_redirected_to tasks_path
  end
end
