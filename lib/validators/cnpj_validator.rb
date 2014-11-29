# https://github.com/joaomilho/brazilian-documents-validations
#
class CnpjValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, options[:message] || :invalid) if CNPJ.invalid?(value)
  end
end
