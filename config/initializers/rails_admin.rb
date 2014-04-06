RailsAdmin.config do |config|

  ### Popular gems integration
  config.model 'Project' do
    list do
      field :title do
        label "Name"
      end
      field :description do
        label "Description"
      end
    end
  end

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

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
    history_index
    bulk_delete
    show
    edit
    delete
    history_show
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
