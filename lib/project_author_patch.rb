module RedmineContacts
  module Patches
    module ProjectPatch
      def self.included(base)
        base.class_eval do
          unloadable
          belongs_to :owner,  class_name: 'User',
                              foreign_key: 'owned_by_id'

          safe_attributes 'owned_by_id'
        end
      end

    end
  end
end

unless Project.included_modules.include?(RedmineContacts::Patches::ProjectPatch)
  Project.send(:include, RedmineContacts::Patches::ProjectPatch)
end
