require 'test_helper'

class InterestTest < ActiveSupport::TestCase
  test '.contact get the contact of selected interest' do
	    madz = contacts(:madz)
	    jayson = contacts(:jayson)

	    swim = interests(:swim)
	    bike = interests(:bike)
	    run = interests(:run)

	    madz.interests << [swim,bike]
	    jayson.interests << [swim,bike,run]

	    assert_equal swim.contacts.count, 2
	    assert_equal bike.contacts.count, 2
	    assert_equal run.contacts.count, 1
	end
end
