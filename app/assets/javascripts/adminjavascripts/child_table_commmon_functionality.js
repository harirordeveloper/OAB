	function add_row(row_id,total_cols,name,store,add_amount_fields,amount_field_column,entra_id)
	{ 
		
		var table = document.getElementById(name); 
		var add_amount_field=add_amount_fields.split(",");
		var add_amount=add_amount_fields
		
		for(i=0;i<table.rows.length;i++)
		{
			if(document.getElementById(row_id+i+"c1").value=="" && document.getElementById(row_id+i+"c2").value=="")
			{
				document.getElementById(row_id+i+"c1").value=i+1
				for(j=0;j<store.length;j++)
				{
					if(store[j])
						document.getElementById(row_id+i+"c"+(j+2)).value=store[j];
						
				}
				name_s=new String(name);
				var link = document.createElement('a');
				link.id=row_id+i
				link.setAttribute('href', 'javascript:void(0)');
				link.innerHTML="<image src='/images/Cancel4.png'>";
				link.setAttribute('onClick','delect_rows_prev(id,'+total_cols+',"'+name_s+'","'+add_amount+'",'+amount_field_column+',"'+entra_id+'");');
				table.rows[i].cells[table.rows[i].cells.length-1].appendChild(link);	
				break;
			}
		}	
		if(amount_field_column>0)
		{
			
			for(k=0;k<add_amount_field.length;k++)
			{
				document.getElementById(add_amount_field[k]).value=0;
			}
			for(i=0;i<table.rows.length;i++)
			{
				if(document.getElementById(row_id+i+"c1").value!="")
				{
					if(document.getElementById(row_id+i+"c"+amount_field_column).value!="" || document.getElementById(row_id+i+"c"+amount_field_column).value )
					{
						for(k=0;k<add_amount_field.length;k++)
						{ 
							document.getElementById(add_amount_field[k]).value=(parseFloat(document.getElementById(add_amount_field[k]).value)+parseFloat(document.getElementById(row_id+i+"c"+amount_field_column).value)).toFixed(2);
						}
					}
				}
				else
				{
					break;
				}
			}
		}									
	}


	//Delete specific row in the table.
	function delect_rows_prev(id,total_cols,name,add_amount_field,amount_field_column,entra_id)
	{
		var add_amount_fields=add_amount_field.split(",");
		var amount_field=amount_field_column
		var table = document.getElementById(name);
		var row_name=id.substr(0,1);
		var delete_row_id;
		if(id.length==3)
			delete_row_id=parseInt(id.substr(1,2))+1;
		else
			delete_row_id=parseInt(id.substr(1,1))+1;
		
		for(i=delete_row_id;i<table.rows.length;i++)
		{
			if(document.getElementById(row_name+i+"c1").value!="")
			{
				for(j=2;j<=total_cols;j++)
					document.getElementById(row_name+(i-1)+"c"+j).value=document.getElementById(row_name+i+"c"+j).value
				if(entra_id!="")
					document.getElementById(entra_id+(i-1)).value=document.getElementById(entra_id+i).value
			}
			else
			{
				for(j=1;j<=total_cols;j++)
					document.getElementById(row_name+(i-1)+"c"+j).value=""
				table.rows[i-1].cells[table.rows[i-1].cells.length-1].innerHTML ="";
				if(entra_id!="")
					document.getElementById(entra_id+(i-1)).value="";
				break;
			}
		}
		if(amount_field>0)
		{
			for(k=0;k<add_amount_fields.length;k++)
			{
				document.getElementById(add_amount_fields[k]).value=0;
			}
			for(i=0;i<table.rows.length;i++)
			{
				if(document.getElementById(row_name+i+"c1").value!="")
				{
					
					if(document.getElementById(row_name+i+"c"+amount_field).value!="")
					{
						for(k=0;k<add_amount_fields.length;k++)
						{
							document.getElementById(add_amount_fields[k]).value=(parseFloat(document.getElementById(add_amount_fields[k]).value)+parseFloat(document.getElementById(row_name+i+"c"+amount_field).value)).toFixed(2)
						}
					}
				}
				else
				{
					break;
				}
			}
			sub_total_calculation();
		}
	}
