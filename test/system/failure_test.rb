require_relative '../test_helper'

class FailureTest < PlaywrightSystemTestCase
  fixtures :users, :members, :member_roles

  test 'should fail' do
    log_user('admin', 'admin')
    visit '/projects/ecookbook/issues/new'

    fill_in 'Subject', with: 'issue subject'
    assert false # 必ず失敗する
  end
end
