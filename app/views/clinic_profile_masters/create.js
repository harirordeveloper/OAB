<% if !@clinic_profile_master.save %>
	 alert("<%= j  @clinic_profile_master.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
<% end %>
