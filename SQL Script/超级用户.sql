select * from users

insert into Users(InnerID,RowID,BillNo,BillType,EmployeeInnerId,
EmployeeBillNo,Name,Password,Creater,CreateDate) 
values(newid(),1,'U0001','��������',newid(),'0000','system','eV4KpEcgt+A=','root',getdate())


insert into Languages(InnerID,RowID,BillNo,BillType,Language,Module,WindowsName,
ControlName,LanguageValue,Creater,CreateDate) select newid(),ID,BillNo,'��������',
Language,Modules,WindowsName,ControlName,LanguageValue,'system',getdate() from Language_backup



