module Mailinator_Driver

  def check_mailinator_mail(email, test_mail)

    puts "connecting"
    visit "https://mailinator.com"
    fill_in 'inboxfield', :with => 'qamails8@mailinator.com'

    find(:xpath, "//*[contains(@class, 'btn btn-dark')]").click
    sleep 2
    find(:xpath, "//*[contains(@class, 'innermail ng-binding')]").click
    sleep 3
    page.has_text?('Hier klicken und Anmeldung bestätigen >')
    find("a", :text => "Hier klicken und Anmeldung bestätigen >")

  end

end



World(Mailinator_Driver)
