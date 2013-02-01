<% if !@test_group.save %>
	 alert("<%= j @test_group.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
         window.location.reload();
<% end %>
