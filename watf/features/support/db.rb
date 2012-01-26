require 'active_record'

class OraProdDb < ActiveRecord::Base
  establish_connection(
  :adapter  => 'oracle',
  :host     => '192.168.8.50',
  :port     => '1521',
  :database => 'dcshtest',
  :username => 'prod_data2',
  :password => 'yhdqa456test')
end

class OraUserDb < ActiveRecord::Base
  establish_connection(
  :adapter  => 'oracle',
  :host     => '192.168.8.50',
  :port     => '1521',
  :database => 'dcshtest',
  :username => 'user_data2',
  :password => 'yhdqa456test')
end

class MysqlDb < ActiveRecord::Base
  establish_connection(
  :adapter  => 'mysql2',
  :host     => '10.0.0.31',
  :database => 'centralmobile',
  :username => 'yhd_mobile',
  :password => 'yhd_mobile')
end

