# encoding: utf-8


require 'redmine'
begin
  require 'config/initializers/session_store.rb'
  rescue LoadError
end

def init_nomnoml
  Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
    next unless /\.rb$/ =~ file
    require_dependency file
  end
end

if Rails::VERSION::MAJOR >= 5
  ActiveSupport::Reloader.to_prepare do
    init_nomnoml
  end
elsif Rails::VERSION::MAJOR >= 3
  ActionDispatch::Callbacks.to_prepare do
    init_nomnoml
  end
else
  Dispatcher.to_prepare :redmine_nomnoml do
    init_nomnoml
  end
end

require File.expand_path('../../../lib/redmine/wiki_formatting/textile/redcloth3', __FILE__)
Redmine::Plugin.register :redmine_nomnoml do
  name 'Redmine Nomnoml'
  author 'Frederic Aoustin'
  description 'The redmine_nomnoml add nomnoml graphic in Redmine.'
  version '0.1.O'
  url 'https://github.com/fraoustin/redmine_nomnoml'
  author_url 'https://github.com/fraoustin'
  requires_redmine :version_or_higher => '2.3.0'

  RedCloth3::ALLOWED_TAGS << "div"
end
