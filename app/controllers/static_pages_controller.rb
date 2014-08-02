class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def faq
  end

  def schedule

    @temp = Palindrome.isPalindrome('A man, a plan, a canal, Panama')

    @palindrome = @temp
  end

  def proposal
  end

  def registration
  end
end
