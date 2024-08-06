require_relative '../../../test/test_helper'

# systemテスト用
class PlaywrightSystemTestCase < ActionDispatch::SystemTestCase
  driven_by(:playwright, options: { headless: ENV['TEST_HEADLESS'] == 'false' ? false : true, browser_type: :chromium })
end
