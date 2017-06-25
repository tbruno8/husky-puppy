# Sanzijing controller
class SanzijingsController < ApplicationController
  def index
    @line = Sanzijing.all
    @line_color = ['text-primary', 'text-warning', 'text-success', 'text-info',
                   'text-danger']

    @line_colors = {Blue: 'text-primary',
               Orange: 'text-warning',
               Green: 'text-success',
               Cyan: 'text-info',
               Red: 'text-danger'
             }
    respond_to do |format|
      format.html
      format.json { head :ok }
      format.js
    end
  end
end
