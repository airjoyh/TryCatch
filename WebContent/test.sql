
  	
select review_no,review_title,review_writer,review_wdate,review_count,company_id
  	from (select review_no,review_title,review_writer,review_wdate,review_count,company_id,rownum rn
  		from(select review_no,review_title,review_writer,review_wdate,review_count,company_id 
  		  from review where company_id='test123'
  		  order by review_no desc))
  	where rn between 1 and 5;
  	    