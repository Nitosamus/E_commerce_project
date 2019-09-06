module ApplicationHelper
	def bootstrap_class_for_flash(type)
		case type
			when "notice" then "alert-info"
			when "success" then "alert-success"
			when "errors" then "alert-danger"
			when "alert" then "alert-warning"
		end
	end
	def find_out_item
		Item.where(user_id: current_user.id)

	end
end
