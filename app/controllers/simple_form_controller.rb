class SimpleFormController < ApplicationController

	def index
	end

	def search
		return if params[:known_lang].nil?

		c = params[:known_lang].count

		case c

		when 0
			@lang_statement = nil
		when 1
			@lang_statement = 'Especially since you know a programming language ...'
		else
			@lang_statement = "Especially since you know #{c} programming languages ..."
		end
	end

end
