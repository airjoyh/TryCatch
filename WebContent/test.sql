
  	
select review_no,review_title,review_writer,review_wdate,review_count,company_id
  	from (select review_no,review_title,review_writer,review_wdate,review_count,company_id,rownum rn
  		from(select review_no,review_title,review_writer,review_wdate,review_count,company_id 
  		  from review where company_id='test123'
  		  order by review_no desc))
  	where rn between 1 and 5;
  	
-----------------------------------------------------------------------------------------

  	create or replace procedure pro_selectPage(
  		--v_company_id review.company_id%type
  		v_start review.review_no%type
  		v_end review.review_no%type
  	) 
  	is
  
  BEGIN
	select review_no,review_title,review_writer,review_wdate,review_count,company_id
  		from (select review_no,review_title,review_writer,review_wdate,review_count,company_id,rownum rn
  			from(select review_no,review_title,review_writer,review_wdate,review_count,company_id 
  		  		from review 
  		  		--where company_id=v_company_id
  		 		 order by review_no desc))
  		where rn between v_start and v_end;
  END;
	/
  	    