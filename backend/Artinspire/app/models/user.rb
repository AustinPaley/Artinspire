class User < ApplicationRecord
  has_many :projects
  has_many :words through :projects
  has_many :arttypes through :projects
end
