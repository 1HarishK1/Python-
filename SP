create procedure temptableinsertrow
      @stu_id bigint,
	  @stu_name varchar(50),
	  @joined_date date,
	  @marks int,
	  @status ENUM('good','avg','bad'),
	  @bmi decimal(2,1)
as
begin
    begin try
	   if exists (select * from #temptable)
	       begin
		     insert into #temptable(@stu_id,@stu_name,@joined_date,@marks,@status,@bmi)
			 print 'Succesully inserted the row'
		   end
	   else
	      begin
		     create table #temptable( 
			     @id bigint,
	             @name varchar(50),
	             @joindate date,
	             @mark int,
	             @states ENUM('good','avg','bad'),
	             @bmicalculator decimal(2,1)
				 );
			end

