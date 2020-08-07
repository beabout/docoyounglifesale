module MailerConcerns 
  extend ActiveSupport::Concern
  
  def generate_premailer(template)
    Premailer.new(render_to_string(template, layout: 'mailer'), {
      with_html_string: true,
      warn_level: Premailer::Warnings::SAFE,
      css: [Rails.root.join('app', 'assets', 'stylesheets','application.scss').to_s]
    })
  end
end