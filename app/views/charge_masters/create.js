<% if !@charge_master.save %>
	 alert("<%= j @charge_master.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
                 window.location.reload();
<% end %>
