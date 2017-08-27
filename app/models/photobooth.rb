class Photobooth < ApplicationRecord
  belongs_to :user,  optional: true
  #validates_presence_of :user

      def initialize(params = {})
        # File is now an instance variable so it can be
          # accessed in the validation.
      @file = params.delete(:file)
    super
      if @file
        self.filename = sanitize_forbidden_attributes(@file.original_filename)
        self.content_type = @file.content_type
        self.file_content= file_content
      end
    end

end
