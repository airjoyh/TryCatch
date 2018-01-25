
  	
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
	
	--------------------------------------------------------------------------------
	
	select company_id,company_name,avg_possibility,rank 
	from (select company_id,company_name,round(avg(review_possibility),1) avg_possibility,RANK() OVER(order by avg(review_possibility) desc) as rank 
	from review natural join company_info group by company_id,company_name)
	where rank<6;
	
	
	select company_id,company_name,avg_welSal,rank 
	from (select company_id,company_name,round(avg(review_welSal),1) avg_welSal,RANK() OVER(order by avg(review_welSal) desc) as rank 
	from review natural join company_info group by company_id,company_name)
	where rank<6;
	
	select company_id,company_name,avg_balance,rank 
	from (select company_id,company_name,round(avg(review_balance),1) avg_balance,RANK() OVER(order by avg(review_balance) desc) as rank 
	from review natural join company_info group by company_id,company_name)
	where rank<6;
	
	
	select company_id,company_name,avg_culture,rank 
	from (select company_id,company_name,round(avg(review_culture),1) avg_culture,RANK() OVER(order by avg(review_culture) desc) as rank 
	from review natural join company_info group by company_id,company_name)
	where rank<6;
	
	
	select company_id,company_name,avg_manager,rank 
	from (select company_id,company_name,round(avg(review_manager),1) avg_manager,RANK() OVER(order by avg(review_manager) desc) as rank 
	from review natural join company_info group by company_id,company_name)
	where rank<6;
	
	
	select company_id,company_name,avg_all,rank 
	from (select company_id,company_name,round((avg(review_possibility)+avg(review_welSal)+avg(review_balance)+avg(review_culture)+avg(review_manager))/5,1) avg_all,
	RANK() OVER(order by (avg(review_possibility)+avg(review_welSal)+avg(review_balance)+avg(review_culture)+avg(review_manager))/5 desc) as rank 
	from review natural join company_info group by company_id,company_name)
	where rank<6;
	
	-----------------------------------------------------------------------
	select company_name from company_info;
	
	
	select company_name,company_size,company_turnover,company_line,rank,nvl(avg_all,0.0)
	from (select company_name,company_size,company_turnover,company_line,avg_all,rank,rownum rn
		from(select company_name,company_size,company_turnover,company_line,nvl(round((avg(review_possibility)+avg(review_welSal)+avg(review_balance)+avg(review_culture)+avg(review_manager))/5,1),0.0) avg_all,
					RANK() OVER(order by (avg(review_possibility)+avg(review_welSal)+avg(review_balance)+avg(review_culture)+avg(review_manager))/5 desc) as rank 
			from review natural join company_info
			group by company_name,company_size,company_turnover,company_line
			))
    where rn between 1 and 10;
	
	
	select company_name,company_size,company_turnover,company_line,rank,avg_possibility
	from (select company_name,company_size,company_turnover,company_line,avg_possibility,rank,rownum rn
		from(select company_name,company_size,company_turnover,company_line,round(avg(review_possibility),1) avg_possibility,
					RANK() OVER(order by avg(review_possibility) desc) as rank 
			from company_info natural join review 
			group by company_name,company_size,company_turnover,company_line
			))
    where rn between #start# and #end#;
	
    
	select company_name,company_size,company_turnover,company_line,rank,avg_welSal
	from (select company_name,company_size,company_turnover,company_line,avg_welSal,rank,rownum rn
		from(select company_name,company_size,company_turnover,company_line,round(avg(review_welSal),1) avg_welSal,
					RANK() OVER(order by avg(review_welSal) desc) as rank 
			from company_info natural join review 
			group by company_name,company_size,company_turnover,company_line
			))
    where rn between #start# and #end#;
    
    
    select company_name,company_size,company_turnover,company_line,rank,avg_balance
	from (select company_name,company_size,company_turnover,company_line,avg_balance,rank,rownum rn
		from(select company_name,company_size,company_turnover,company_line,round(avg(review_balance),1) avg_balance,
					RANK() OVER(order by avg(review_balance) desc) as rank 
			from company_info natural join review 
			group by company_name,company_size,company_turnover,company_line
			))
    where rn between #start# and #end#;
    
    
    select company_name,company_size,company_turnover,company_line,rank,avg_culture
	from (select company_name,company_size,company_turnover,company_line,avg_culture,rank,rownum rn
		from(select company_name,company_size,company_turnover,company_line,round(avg(review_culture),1) avg_culture,
					RANK() OVER(order by avg(review_culture) desc) as rank 
			from company_info natural join review 
			group by company_name,company_size,company_turnover,company_line
			))
    where rn between #start# and #end#;
    
    select company_name,company_size,company_turnover,company_line,rank,avg_manager
	from (select company_name,company_size,company_turnover,company_line,avg_manager,rank,rownum rn
		from(select company_name,company_size,company_turnover,company_line,round(avg(review_manager),1) avg_manager,
					RANK() OVER(order by avg(review_manager) desc) as rank 
			from company_info natural join review 
			group by company_name,company_size,company_turnover,company_line
			))
    where rn between #start# and #end#;
	
	
  	    