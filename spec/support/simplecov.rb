require 'simplecov'

SimpleCov.start do
  # Remove os arquivos ou diretórios selecionados da cobertura de testes
  add_filter '/test/'
  add_filter '/spec/'
  add_filter '/config/'

  # Grupos
  add_group 'Controllers',  'app/controllers'
  add_group 'Models',       'app/models'
  add_group 'Mailers',      'app/mailers'
  add_group 'Helpers',      'app/helpers'
  add_group 'Libraries',    'lib'
end
