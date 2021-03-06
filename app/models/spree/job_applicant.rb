module Spree
  class JobApplicant < ActiveRecord::Base
    attr_accessible :name, :cover, :contact_info, :resume, :intro, :phone, :email
    attr_accessible :job_opening_id

    belongs_to :job_opening

    has_attached_file :cover,
                      :url => "/system/:attachment/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/system/:attachment/:id/:basename.:extension"

    has_attached_file :resume,
                      :url => "/system/:attachment/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/system/:attachment/:id/:basename.:extension"

    default_scope order('created_at DESC')
  end
end
