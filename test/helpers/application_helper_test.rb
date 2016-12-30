require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
	test 'should return the site title with application name' do
		assert_equal 'Rails 5 App', set_site_title(nil)
		assert_equal 'Sample Page | Rails 5 App', set_site_title('Sample Page')
	end

	test 'should return the site with title with the prime character' do
		assert_equal 'Sample Page | ', set_title('Sample Page')
	end

	test 'should return the site title empty if title is nil' do
		assert_nil set_title(nil)
	end
end
