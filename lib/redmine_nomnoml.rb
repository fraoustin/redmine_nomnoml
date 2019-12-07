module Rnomnoml
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        return javascript_include_tag('rnomnoml.js', :plugin => 'redmine_nomnoml') +
          javascript_include_tag('dagre.min.js', :plugin => 'redmine_nomnoml') +
          stylesheet_link_tag('rnomnoml.css', :plugin => 'redmine_nomnoml')  
      end
    end
  end
end

module RnomnomlMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a sequence code:\n\n" +
      "<pre>\n" +
      "{{nomnoml\n[nomnoml] is -> [awesome]\n\n\n}}\n" +
      "</pre>"
    macro :nomnoml, :parse_args => false do |obj, args, text|
      content_tag('div', text, :class => "nomnoml "+args)
    end

  end

end
