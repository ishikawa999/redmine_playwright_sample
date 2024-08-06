require_relative '../test_helper'

class HomeTest < PlaywrightSystemTestCase
  fixtures :members, :member_roles, :users

  test 'home' do
    visit '/'
    assert_text 'Home'
    assert_text 'Hello, World.'
  end

  test 'login' do
    visit '/my/page'
    assert_equal '/login', current_path
    within('#login-form form') do
      fill_in 'username', :with => 'admin'
      fill_in 'password', :with => 'admin'
      find('input[name=login]').click
    end
    assert_equal '/my/page', current_path
    assert_text 'admin'
  end
end
