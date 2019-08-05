class AdminUser < ApplicationRecord
  authenticates_with_sorcery!

  def full_name
    "#{last_name} #{first_name}"
  end
end
