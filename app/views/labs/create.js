<% if !@lab.save %>
	 alert("<%= j @lab.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
<% end %>
