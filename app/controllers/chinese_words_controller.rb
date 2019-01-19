class ChineseWordsController < ApplicationController
  def index
    @chinese_word = ChineseWord.all
  end

  private

  def chinese_word_params
    params.require(:chinese_word).permit(:word) || {}
  end
end
