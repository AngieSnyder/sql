-- inner join
select Account_Holder, Balance, Fees, Amount, Txn_Type
	from
	   accounts accts
		  inner join
       transactions
		  on accts.ID = AccountsID;          
          
Select Account_Holder, Balance, Fees, Amount, Txn_Type
	From accounts accts
    left outer join transactions
    on accts.id = AccountsID;
          