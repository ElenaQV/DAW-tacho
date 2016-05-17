require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './ap/permissions'
require './pry/tip_script'

admin_personal_info = {'name'=>'Joel', 'last_name'=>'Sanchez', 'birth_year'=>'1989'}
admin_contact_info = {'email'=>'joel_sanchez_m@gmail.com', 'mod'=>'477 234 54 34'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info,admin_contact_info,admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role.methods - Object.methods

puts tip(80)

save_new_user('Elena Quintero', 'm.elena.q.v@gmail.com',1994)
users = save_new_user('Isabelle Sanchez','iza_sa@gmail.com',1988)
ap users


