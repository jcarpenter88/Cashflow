Factory.define :user do |f|
  f.sequence(:email) {|i| "#{i}@example.com"}
  f.password "password"
  f.password_confirmation { |u| u.password }
end

Factory.define :admin, :parent => :user do |f|
  f.admin { true }
end

Factory.define :expense do |f|
  f.association :user
  f.name "Car Payment"
  f.amount "24.55"
end

Factory.define :income do |f|
  f.association :user
  f.name "Paycheck"
  f.amount "100.00"
end
