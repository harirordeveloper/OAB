<% if !@consultant_master.save %>
	 alert("<%= j @consultant_master.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
<% end %>
