OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,'439511260789-ekrv7fdia6p8llqpqora4dpmhocgq49j.apps.googleusercontent.com','NZQ6JgZwpV2pR1mHRRTIx-r0', {
      scope: ['https://mail.google.com/','contacts','plus.login','plus.me','userinfo.email','userinfo.profile']
  }
end
