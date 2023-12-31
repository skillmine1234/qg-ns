# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ns_template do
    sc_event_id {Factory(:sc_event).id}
    sms_text 'This is a SMS template'
    sequence(:template_code) {|n| "%03i" % "#{n}"}
    display_text "MyString"
  end
end