require_relative '../../../test/test_helper'

# systemテスト用
class PlaywrightSystemTestCase < ActionDispatch::SystemTestCase
  driven_by(:playwright, options: { headless: ENV['TEST_HEADLESS'] == 'false' ? false : true, browser_type: :chromium })

  Capybara.default_max_wait_time = 10
  Capybara.default_driver = :playwright
  Capybara.javascript_driver = :playwright

  def log_user(login, password)
    visit '/my/page'
    assert_equal '/login', current_path
    within('#login-form form') do
      fill_in 'username', :with => login
      fill_in 'password', :with => password
      find('input[name=login]').click
    end
    assert_equal '/my/page', current_path
  end
end
