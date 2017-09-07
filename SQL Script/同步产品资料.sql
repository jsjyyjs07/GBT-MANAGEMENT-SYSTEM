insert into GBT.dbo.Product(InnerID,BillNo,BillType,BillDate,ProductType,CommodityDescription,State,Creater,CreateDate)
select NEWID(),A.型号,'TYPE0003',GETDATE(),A.类别,A.产品描述,A.状态,'System',GETDATE() from [arondb].[dbo].[AT_RD_产品_型号主档] A



