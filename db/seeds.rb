# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Admin.delete_all
Admin.create(:email=>'hanqijing@gmail.com', :password=>'123456')

SiteInfo.delete_all
SiteInfo.create(:nick_name=>'Bossary',:name=>'Bossary',:meta_data=>'Bossary')
