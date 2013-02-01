<% if !@clinic.save %>
	 alert("<%= j @clinic.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
<% end %>
