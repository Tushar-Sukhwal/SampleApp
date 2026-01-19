class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  include SessionsHelper
  allow_browser versions: :modern
  def hello
    render html: "Hello"
  end
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
end
