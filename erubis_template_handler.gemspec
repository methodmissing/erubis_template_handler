# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{erubis_template_handler}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lourens Naud\303\251"]
  s.date = %q{2009-02-10}
  s.description = %q{Rails 2.3 / Edge template handler for erubis ( http://www.kuwata-lab.com/erubis/ )}
  s.email = %q{lourens@methodmissing.com}
  s.files = ["Rakefile", "README.textile", "VERSION.yml", "lib/action_view", "lib/action_view/helpers", "lib/action_view/helpers/erubis_helper.rb", "lib/action_view/template_handlers", "lib/action_view/template_handlers/erubis.rb", "lib/output_buffer_enhancer.rb", "test/controllers", "test/controllers/products_controller.rb", "test/erubis_handler_test.rb", "test/helpers", "test/helpers/products_helper.rb", "test/test_helper.rb", "test/views", "test/views/products", "test/views/products/_product.erb", "test/views/products/index.erb", "rails/init.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/methodmissing/erubis_template_handler}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Rails 2.3 / Edge template handler for erubis ( http://www.kuwata-lab.com/erubis/ )}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
