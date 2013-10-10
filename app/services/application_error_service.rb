class ApplicationErrorService

  attr_reader :user_application

  def initialize(user_application)
    @user_application = user_application
  end

  def create_application_error(values)
    @user_application.create_application_error(
        message: values[:message],
        source: values[:source],
        stack_trace: values[:stackTrace],
        additional_data: (values[:additionalData] || Hashie::Mash.new).to_hash
    )
  end
end