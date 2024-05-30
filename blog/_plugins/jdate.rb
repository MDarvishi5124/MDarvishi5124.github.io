#!/bin/env ruby
# encoding: utf-8

require "jalalidate"

module Jekyll
  module JDate

    def jdate(date, options={})
      jalali = JalaliDate.new(date)
      return jalali.strftime(options)
    end
    def pnumber(number)
      number.to_s.gsub(/[0-9]/,'1'=>'۱','2'=>'۲','3'=>'۳','4'=>'۴','5'=>'۵','6'=>'۶','7'=>'۷','8'=>'۸','9'=>'۹','0'=>'۰')
    end
  end
end

Liquid::Template.register_filter(Jekyll::JDate)
