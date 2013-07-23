# Copyright (C) 2012-2013 Zammad Foundation, http://zammad-foundation.org/

class Template < ApplicationModel
  store           :options
  validates       :name, :presence => true
  after_create    :notify_clients_after_create
  after_update    :notify_clients_after_update
  after_destroy   :notify_clients_after_destroy
end
