require_relative '../test_helper'

class SampleTest < PlaywrightSystemTestCase
  fixtures :users

  test 'home' do
    visit '/'
    assert_text 'Home'
  end

  test 'Create issue' do
    log_user('admin', 'admin')
    visit '/issues/new'

    fill_in 'Subject', with: 'issue subject'
    click_on 'Create'

    assert_text 'issue subject'
    assert_text "Issue ##{Issue.last.id} created."
  end
end
