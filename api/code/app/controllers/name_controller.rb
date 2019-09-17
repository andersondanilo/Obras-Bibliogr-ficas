class NameController < ApplicationController
  def convert_to_author_name
    service = NameService.new
    author_name = service.convert_to_author_name(params[:name])
    render json: {author_name: author_name}
  end
end
