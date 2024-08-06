require_relative '../test_helper'

class FailureTest < PlaywrightSystemTestCase
  fixtures :all

  test 'should fail' do
    skip

    log_user('admin', 'admin')
    visit '/projects/ecookbook/issues/new'

    fill_in 'Subject', with: 'issue subject'
    assert false # 必ず失敗する
  end
end
