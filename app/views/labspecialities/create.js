<% if !@speciality.save %>
	 alert("<%= j @speciality.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
<% end %>
