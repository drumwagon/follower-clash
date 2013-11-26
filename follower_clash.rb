require 'rubygems'
require 'bundler/setup'

require_relative "lib/user_comparer"

user1 = UserComparer::User.new('ornellasmike')
user2 = UserComparer::User.new('drumwagon')
comparer = UserComparer::Comparer.new(user1, user2)
puts "#{user1.username}'s full name is: #{user1.fullName}"
puts "#{user2.username}'s full name is: #{user2.fullName}"
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"
puts "And the user with the most followers is: #{comparer.compare}"
puts "#{user1.username}'s friend count: #{user1.friends}"
puts "#{user2.username}'s friend count: #{user2.friends}"
puts "And the user with the most friends is: #{comparer.following}"
puts "#{user1.username}'s tweet count: #{user1.tweets}"
puts "#{user2.username}'s tweet count: #{user2.tweets}"
puts "And the user with the most tweets is: #{comparer.tweets}"
puts "#{user1.username}'s last tweet was: #{user1.last_tweet}"
puts "#{user2.username}'s last tweet was: #{user2.last_tweet}"
