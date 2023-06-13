class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # rubocop:disable Naming/PredicateName
  def has_pass?
    # Is this `!@pass_id.nil` saying "if the pass_id is not nil..."
    # and is the way I implemented this conventional?
    return true if !@pass_id.nil?
    # After a guard clause like this, is it implied that else will be false?
    false
  end
  # rubocop:enable Naming/PredicateName

  def fits_ride?(ride_minimum_height)
    return true if @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    # Is self.fits_ride?(rmh) appropriate to use here? 
    return true if !@pass_id.nil? && self.fits_ride?(ride_minimum_height)
  end
end
