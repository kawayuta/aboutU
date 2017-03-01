class Item < ApplicationRecord
	records_with_operator_on :create, :update
end
