# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'public_routines_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = PublicRoutine.new
  t.name = row['name']
  t.include = row['include']
  t.exercise1 = row['exercise1']
  t.sets1 = row['sets1']
  t.reps1 = row['reps1']
  t.exercise2 = row['exercise2']
  t.sets2 = row['sets2']
  t.reps2 = row['reps2']
  t.exercise3 = row['exercise3']
  t.sets3 = row['sets3']
  t.reps3 = row['reps3']
  t.exercise4 = row['exercise4']
  t.sets4 = row['sets4']
  t.reps4 = row['reps4']
  t.exercise5 = row['exercise5']
  t.sets5 = row['sets5']
  t.reps5 = row['reps5']
  t.exercise6 = row['exercise6']
  t.sets6 = row['sets6']
  t.reps6 = row['reps6']
  t.exercise7 = row['exercise7']
  t.sets7 = row['sets7']
  t.reps7 = row['reps7']
  t.exercise8 = row['exercise8']
  t.sets8 = row['sets8']
  t.reps8 = row['reps8']
  t.save
  puts "#{t.name} saved."
end

puts "There are now #{PublicRoutine.count} rows in the public_routines table."
