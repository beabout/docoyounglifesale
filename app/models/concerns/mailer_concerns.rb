module MailerConcerns 
  extend ActiveSupport::Concern

  included do 
    default from: "notifications@docoylsale.com"
  end
  
  def generate_premailer(template)
    Premailer.new(render_to_string(template, layout: 'mailer'), {
      with_html_string: true,
      warn_level: Premailer::Warnings::SAFE,
      css: [Rails.root.join('app', 'assets', 'stylesheets','email.css').to_s]
    })
  end
end 