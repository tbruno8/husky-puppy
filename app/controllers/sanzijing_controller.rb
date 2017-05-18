# Sanzijing controller
class SanzijingController < ApplicationController
  def index
    @line = Sanzijing.all
    @line_color = ['text-primary', 'text-warning', 'text-success', 'text-info',
                   'text-danger']
  end
end
