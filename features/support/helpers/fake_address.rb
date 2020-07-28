# fake address generator
module CreateFakeAddress
  def fake_address_default
    t = Time.now
    seed = t.strftime("%H%M%S")
    r = rand 0..11
    Faker::Config.locale = 'de'
    puts salutation = Faker::Name.prefix
    case salutation
    when "Dr."
      choose('address-form_billingAddress_gender_0')
    when "Hr."
      choose('address-form_billingAddress_gender_0')
    else
      choose('address-form_billingAddress_gender_1')
    end
    puts fname = Faker::Name.first_name
    puts lname = Faker::Name.last_name
    puts street = Faker::Address.street_name
    puts streetnumber = Faker::Number.number(2)
    puts telefonnumber = Faker::Number.number(7)
    puts city = Faker::Address.city
    email = "#{fname}#{lname}#{seed}#{r}@mailinator.com"
    email = email.gsub('ä', 'ae')
    email = email.gsub('ö', 'oe')
    email = email.gsub('ü', 'ue')
    email = email.gsub('ß', 'ss')
    email = email.gsub('é', 'e')
    post_to_slack ":email:#{email}"
    fill_in 'Vorname', :with => fname 
    fill_in 'Nachname', :with => lname
    fill_in 'Straße', :with => street 
    fill_in 'Hausnummer', :with => streetnumber 
    fill_in 'PLZ', :with => '13359' 
    fill_in 'Stadt', :with => city
    fill_in 'Vorwahl', :with => '030'
    fill_in 'Telefonnummer', :with => telefonnumber 
    fill_in 'address-form_customer_email_first', :with => email 
    fill_in 'E-Mail wiederholen', :with => email
    fill_in 'address-form_customer_password_first', :with => 'xxxxxx'
    fill_in 'Passwort wiederholen', :with => 'xxxxxx'
   end

  def fake_address_while_logged_in
    t = Time.now
    seed = t.strftime("%H%M%S")
    r = rand 0..11
    Faker::Config.locale = 'de'
    puts salutation = Faker::Name.prefix
    case salutation
    when "Dr."
      choose('address-form_billingAddress_gender_0')
    when "Hr."
      choose('address-form_billingAddress_gender_0')
    else
      choose('address-form_billingAddress_gender_1')
    end
    puts fname = Faker::Name.first_name
    puts lname = Faker::Name.last_name
    puts street = Faker::Address.street_name
    puts streetnumber = Faker::Number.number(2)
    puts telefonnumber = Faker::Number.number(7)
    puts city = Faker::Address.city
    email = "#{fname}#{lname}#{seed}#{r}@mailinator.com"
    email = email.gsub('ä', 'ae')
    email = email.gsub('ö', 'oe')
    email = email.gsub('ü', 'ue')
    email = email.gsub('ß', 'ss')
    email = email.gsub('é', 'e') 
    puts email
    fill_in 'Vorname', :with => fname 
    fill_in 'Nachname', :with => lname
    fill_in 'Straße', :with => street 
    fill_in 'Hausnummer', :with => streetnumber 
    fill_in 'PLZ', :with => '13359' 
    fill_in 'Stadt', :with => city
    fill_in 'Vorwahl', :with => '030'
    fill_in 'Telefonnummer', :with => telefonnumber 
    post_to_slack ":email:#{email}"
  end


  def fake_address_klarna

    t = Time.now
    seed = t.strftime("%H%M%S")
    r = rand 0..11
    Faker::Config.locale = 'de'
    puts salutation = Faker::Name.prefix
    case salutation
    when "Dr."
      choose('address-form_billingAddress_gender_0')
    when "Hr."
      choose('address-form_billingAddress_gender_0')
    else
      choose('address-form_billingAddress_gender_1')
    end
    puts fname = Faker::Name.first_name
    puts lname = 'Approved'
    puts street = Faker::Address.street_name
    puts streetnumber = Faker::Number.number(2)
    puts telefonnumber = Faker::Number.number(7)
    puts city = Faker::Address.city
    email = "#{fname}#{lname}#{seed}#{r}@mailinator.com"
    email = email.gsub('ä', 'ae')
    email = email.gsub('ö', 'oe')
    email = email.gsub('ü', 'ue')
    email = email.gsub('ß', 'ss')
    email = email.gsub('é', 'e')
    puts email
    fill_in 'Vorname', :with => fname 
    fill_in 'Nachname', :with => lname
    fill_in 'Straße', :with => street 
    fill_in 'Hausnummer', :with => streetnumber 
    fill_in 'PLZ', :with => '13359' 
    fill_in 'Stadt', :with => city
    fill_in 'Vorwahl', :with => '030'
    fill_in 'Telefonnummer', :with => telefonnumber 
    # fill_in 'checkout-step-one_customer_email_first', :with => email
    fill_in 'address-form_customer_email_first', :with => email
    fill_in 'E-Mail wiederholen', :with => email 
    # fill_in 'checkout-step-one_customer_password_first', :with => 'xxxxxx'
    fill_in 'address-form_customer_password_first', :with => 'xxxxxx'
    fill_in 'Passwort wiederholen', :with => 'xxxxxx'
    post_to_slack ":email:#{email}"
  end

  def fake_address_while_logged_in_with_klarna
    t = Time.now
    seed = t.strftime("%H%M%S")
    r = rand 0..11
    Faker::Config.locale = 'de'
    puts salutation = Faker::Name.prefix
    case salutation
    when "Dr."
      choose('address-form_billingAddress_gender_0')
    when "Hr."
      choose('address-form_billingAddress_gender_0')
    else
      choose('address-form_billingAddress_gender_1')
    end
    puts fname = Faker::Name.first_name
    puts lname = 'Approved'
    puts street = Faker::Address.street_name
    puts streetnumber = Faker::Number.number(2)
    puts telefonnumber = Faker::Number.number(7)
    puts city = Faker::Address.city
    email = "#{fname}#{lname}#{seed}#{r}@mailinator.com"
    email = email.gsub('ä', 'ae')
    email = email.gsub('ö', 'oe')
    email = email.gsub('ü', 'ue')
    email = email.gsub('ß', 'ss')
    puts email
    fill_in 'Vorname', :with => fname 
    fill_in 'Nachname', :with => 'Approved'
    fill_in 'Straße', :with => street 
    fill_in 'Hausnummer', :with => streetnumber 
    fill_in 'PLZ', :with => '13359' 
    fill_in 'Stadt', :with => city
    fill_in 'Vorwahl', :with => '030'
    fill_in 'Telefonnummer', :with => telefonnumber 
    post_to_slack ":email:#{email}"
  end
end
World(CreateFakeAddress)

