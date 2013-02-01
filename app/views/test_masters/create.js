<% if !@test_master.save %>
	 alert("<%= j @test_master.errors.full_messages.join(', ').html_safe %>");
<% else %>
	alert("Record create sucessfully.");
                 window.location.reload();
<% end %>
