require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  setup do
    @madz = contacts(:madz)
    swim = interests(:swim)
    bike = interests(:bike)
    run = interests(:run)

    @madz.interests << [swim,bike,run]
  end

  test '.males' do
    assert_equal 1, Contact.males.count
  end

  test '.females' do
    assert_equal 1, Contact.females.count
  end

  test '.interests association table' do
    assert_equal @madz.interests.map{ |i| i.name }.sort, ['Bike', 'Run', 'Swim']
  end

  test '.insterests should be destroyed if contact is destroyed' do
    interests = @madz.interests
    assert_equal interests.count, 3

    @madz.destroy
    assert interests.empty?
  end
end
