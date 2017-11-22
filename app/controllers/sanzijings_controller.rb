# Sanzijing controller
class SanzijingsController < ApplicationController
  def index
    @line = Sanzijing.all
    respond_to do |format|
      format.html
      format.json { head :ok }
      format.js
    end
  end
end
