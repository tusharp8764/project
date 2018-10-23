create proc Group2.usp_ViewPolicy
@cID int
as
begin

Select * from Group2.Endorsements where customerID=@cID
end

exec Group2.usp_ViewPolicy



--update after logging in
create proc Group2.usp_UpdateCustomer
--SET IDENTITY_INSERT Group2.EndorsementsTemp  ON,
@ccustomerID int,
@cpolicyNumber int,
@cpolicyName varchar(30),
@cproductName varchar(30),
@cproductLine varchar(200),
@cName varchar(30),
@cAddress varchar(50),
@cPh varchar(12),
@cnomineeName varchar(30),
@cnomineeRelation varchar(20),
@cDOB DateTime,
@cGender char,
@cSmoking varchar(20),
@cpremiumFrequency varchar(20)


as
begin

insert into Group2.Endorsements values(@ccustomerID,@cpolicyNumber,@cpolicyName,@cproductName,@cproductLine,@cName,@cAddress,@cPh,@cGender,@cDOB,@cSmoking,@cnomineeName,@cnomineeRelation,@cpremiumFrequency)

end

exec Group2.usp_UpdateCustomer




