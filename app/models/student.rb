class Student < ActiveRecord::Base
	validates :name, :matric_number, :year_of_study, presence: true
	validates :name, length: { minimum: 8, maximum: 64 }
	validates :matric_number, length: { minimum: 8, maximum: 16 }
	validates :year_of_study, numericality: { only_integers: true }
	# enforce_migration_validations
end
