class Language < ActiveRecord::Base
  # SCOPES ---------------------------------------------------------------------
  scope :by_name, -> { self.all.order(:name) }
end
