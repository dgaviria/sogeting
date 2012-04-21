module WinksHelper
  def get_status(status)
  	if status == "pending"
		return "warning"
	end
	
	if status == "approved"
		return "success"
	else 
	    return "important"
	end
	
	
	
  end
end