insert into GBT.dbo.Product(InnerID,BillNo,BillType,BillDate,ProductType,CommodityDescription,State,Creater,CreateDate)
select NEWID(),A.�ͺ�,'TYPE0003',GETDATE(),A.���,A.��Ʒ����,A.״̬,'System',GETDATE() from [arondb].[dbo].[AT_RD_��Ʒ_�ͺ�����] A



