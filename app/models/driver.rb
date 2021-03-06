class Driver < User
  before_validation :set_default_role!, on: :create

  has_many :donations
  has_many :pickups, through: :donations
  has_many :dropoffs, through: :donations

  private
    def set_default_role!
      begin
        @role = Role.find_by_description self.type
      rescue
        raise "Error setting default role for donor."
      end
    end
end
