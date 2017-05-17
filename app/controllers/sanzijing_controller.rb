class SanzijingController < ApplicationController
  def index
    @line = Sanzijing.all
  end
end
