class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero

  STRENGTH_OPTIONS = %w[Strong Weak Average].freeze

  validates :strength,{
    inclusion: { in: STRENGTH_OPTIONS, case_sensitive: false ,message: "must be either Strong, Weak, or Average"}
  }
end
