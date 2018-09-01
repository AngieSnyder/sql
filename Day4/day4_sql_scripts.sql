INSERT INTO Accounts VALUES
(50, 'Donald Trump', '45004658.00', '0.00');


Insert into accounts (Account_Holder, Balance, Fees)
  Values ('Dave Grohl', 2450000, 0.00);

update accounts
	Set account_Holder = 'Donald J Trump'
    Where ID = 50;
    
update accounts
set fees = 100
  where balance <= 100000;

insert into accounts values
	(52, 'Dummy John', 65489, 100.00);

insert into accounts (account_holder, Balance, Fees)
	Values ('Dummy Williams', 9825789, 0);

insert into accounts (account_holder, Balance, Fees)
	values ('Dummy Thomas', 63278955, 0);
    
insert into accounts (account_holder, Balance, Fees)
	values ('Dummy Smith', 657896, 50),
		   ('Jhon Doe', 9586, 500),
           ('Bill Johnson', 98356, 75),
           ('Thomas Netherland', 6528648, 95);
           
Update accounts
	set balance = 6589
    where ID = 4;

Update accounts
	set fees = 0
    where ID = 4;
    
Delete from accounts
	where id = 54;
    
update accounts
	set fees = 0
	where ID = 1;
    
delete from accounts
	where ID = 51;
    
