class Video < ActiveRecord::Base
  attr_accessible :name, :video, :votes

has_many :comments, :dependent => :destroy
end