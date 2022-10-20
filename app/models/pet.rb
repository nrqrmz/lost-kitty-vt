# frozen_string_literal: true

# this pet has a custom method and a constant
class Pet < ApplicationRecord
  SPECIES = %w[dog cat rabbit snake turtle].freeze

  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}

  def found_days_ago
    "found #{(Date.today - found_on).to_i} days ago"
  end
end
