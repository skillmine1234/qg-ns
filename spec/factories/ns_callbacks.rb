# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ns_callback do
    sequence(:app_code) {|n| "%03i" % "#{n}"}
    setting1_name 'Setting1'
    setting1_type 'number'
    setting1_value "1"
    notify_url 'http://localhost'
    approval_status "U"
    last_action "C"
    lock_version 1
    approved_version 1
    udf1_name 'udf1'
    udf1_type 'text'
    unique_udfs_cnt 1
    sc_service_id { Factory(:sc_service, approval_status: 'A').id }
  end
end