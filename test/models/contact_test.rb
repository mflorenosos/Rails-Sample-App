require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  setup do
    @craig = contacts(:craig)
    swim = interests(:swim)
    bike = interests(:bike)
    run = interests(:run)

    @craig.interests << [swim, bike, run]
  end

  test '.males' do
    assert_equal 1, Contact.males.count
  end

  test '.females' do
    assert_equal 2, Contact.females.count
  end

  test '.interests association table' do
    assert_equal @craig.interests.map{ |i| i.name }, ['Swim', 'Bike', 'Run']
  end

  test '.insterests should be destroyed if contact is destroyed' do
    interests = @craig.interests
    assert_equal interests.count, 3

    @craig.destroy
    assert interests.empty?
  end
end
