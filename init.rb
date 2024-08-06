Redmine::Plugin.register :redmine_playwright_sample do
  name 'Redmine Playwright Sample'
  description 'This is a plugin for Redmine'
  version '0.0.1'
end

module PlaywrightSample
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_body_top(context)
      tag.p('Hello, World.')
    end
  end
end
