# Math controller
class MathesController < ApplicationController
  def index
    @line_color = ['text-primary', 'text-warning', 'text-success', 'text-info',
                   'text-danger']
  end
end
