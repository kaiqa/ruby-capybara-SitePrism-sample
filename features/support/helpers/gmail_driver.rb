module GmailDriver
  # Encoding.default_internal = Encoding::UTF_8
  # Encoding.default_external = Encoding::UTF_8

  def flush_email_inbox(email)
    puts 'connecting'
    gmail = Gmail.connect(email, 'mypassword')
    gmail.inbox.find(:from => 'news@apiman.de').each do |email|
      email.delete!
    end
    gmail.inbox.find(:from => 'kontakt@apiman.de').each do |email|
      email.delete!
    end
    # email.inbox.emails(:from => email_address).each do |email|
    # email.delete!
    # end
    puts 'email deleted'
  end

  def check_confirmation_gmail(email)
    puts 'connecting'
    gmail = Gmail.connect('qamails8', 'asdfqwer1234#qa8')
    if gmail
      puts 'i am logged in'
    else
      raise Exception, 'log in'
    end
    puts 'fetching first unread mail from #{email}'
    first_unread_email = gmail.inbox.emails(:unread, :from => '#{email}').first

    if first_unread_email
      puts '------email-found-------'

    else
      raise Exception, 'no unread email from #{email} found'
    end
  end

  def click_confirmation_link_gmail(email)
    puts 'connecting'
    gmail = Gmail.connect('qamails8', 'aghjghjgh')
    if gmail
      puts 'i am logged in'
    else
      raise Exception, 'not logged in'
    end
    puts 'fetching first unread mail from #{email}'
    first_unread_email = gmail.inbox.emails(:unread, :from => '#{email}').first

    if first_unread_email
      puts '-----getting--first-unread--email----------'

      first_unread_email.multipart?
      charset = first_unread_email.text_part.content_type_parameters[:charset]
      body = first_unread_email.text_part.body.to_s.force_encoding(charset).encode('UTF-8')
      body_links = body.scan(/(?:http|https):\/\/[a-z0-9]+(?:[\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(?:(?::[0-9]{1,5})?\/[^\s]*)?/ix)
      puts 'LINKS found '
      puts link_amount = body_links.size
      puts confirmation_link = body_links[link_amount - 1]
      #  body_links.each { |x| puts x }
      visit confirmation_link
    else
      raise Exception, "no unread email from #{email} found"
    end
  end

  def check_voucher_gmail(email)

    puts 'connecting'
    gmail = Gmail.connect('qamails8', 'gjhgjh')
    if gmail
      puts 'i am logged in'
    else
      raise Exception, 'log in'
    end
    puts "fetching first unread mail from #{email}"
    first_unread_email = gmail.inbox.emails(:unread, :from => "#{email}").first

    if first_unread_email
      puts '------email-found-------'

    else
      raise Exception, "no unread email from #{email} found"
    end
  end

  def unsubscribe_gmail(email)

    puts 'connecting'

    gmail = Gmail.connect('qamails8', 'asdfqwer1234#qa8')
    if gmail
      puts 'i am logged in'
    else
      raise Exception, 'not logged in'
    end

    puts "fetching first unread mail from #{email}"

    first_unread_email = gmail.inbox.emails(:unread, :from => "#{email}").first

    if first_unread_email
      puts '-----getting--first-unread--email----------'

      first_unread_email.multipart?
      charset = first_unread_email.text_part.content_type_parameters[:charset]
      body = first_unread_email.text_part.body.to_s.force_encoding(charset).encode("UTF-8")
      body_links = body.scan(/(?:http|https):\/\/[a-z0-9]+(?:[\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(?:(?::[0-9]{1,5})?\/[^\s]*)?/ix)
      puts 'LINKS found '
      puts link_amount = body_links.size
      puts unsubscribe_link = body_links[link_amount - 1]
      #  body_links.each { |x| puts x }
      visit unsubscribe_link

    else
      raise Exception, "no unread email from #{email} found"
    end
  end

  def delete_gmail(email_address)
    puts 'connecting'
    gmail = Gmail.connect('qamails8', 'asdfqwer1234#qa8')
    gmail.inbox.emails(:from => email_address).each do |email|
      email.delete!
      puts 'email deleted'
    end
  end
end

World(GmailDriver)
