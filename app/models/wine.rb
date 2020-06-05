class Wine < ApplicationRecord
  has_many :ratings
  has_many :assemblies
  has_many :strains, through: :assemblies
  has_many :enologists, through: :ratings
  accepts_nested_attributes_for :assemblies, reject_if: lambda {|attributes| attributes['percentage'].blank?} 
  # reject_if: -> (attributes) { attributes['percentage'].blank?}
  def strains_names
    assemblies.map do |assembly|      
      "#{assembly.strain.name} (#{assembly.percentage})" 
    end 
  end 
end
