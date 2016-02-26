RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  ['Basic', 'Web', 'Reverse', 'Crypto', 'Reverse', 'Forensic'].each do |type|
    config.model type do
      navigation_label 'Wargame'
      weight -1
    end
  end

  ['Setting', 'News', 'Announcement', 'Qna', 'Record', 'User', 'Identity'].each do |type|
    config.model type do
      navigation_label 'Global settings'
      weight -2
    end
  end

  ['Major', 'Sex', 'Indicator'].each do |type|
    config.model type do
      navigation_label 'Others'
      weight 100
    end
  end
end
