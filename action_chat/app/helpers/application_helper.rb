# frozen_string_literal: true

module ApplicationHelper
	# custom flash messages
	def alert_class(flash_type)
	    case flash_type.to_sym
	    	when :success
	      	"alert-success"
	    	when :alert
	      	"alert-warning"
	    	when :error
	      	"alert-danger"
	      	when :notice
	      	"alert alert-info"	
	    end
	end
end
