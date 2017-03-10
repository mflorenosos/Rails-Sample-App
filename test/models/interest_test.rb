require 'test_helper'

class InterestTest < ActiveSupport::TestCase
  test '.contacts get the contacts of selected interests' do
    craig = contacts(:craig)
    mirinda = contacts(:mirinda)
    daniela = contacts(:daniela)

    swim = interests(:swim)
    bike = interests(:bike)
    run = interests(:run)

    craig.interests << [swim, bike, run]
    mirinda.interests << [swim, bike]
    daniela.interests << swim

    assert_equal swim.contacts.count, 3
    assert_equal bike.contacts.count, 2
    assert_equal run.contacts.count, 1
  end
end
