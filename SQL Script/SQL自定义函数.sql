Alter function dbo.aa(@str as varchar(100))
returns varchar(100)
as
begin
declare @strs varchar(100)
select @strs=[Language] from Language where [LanguageInnerID]=@str
return @strs
end
go

declare @aa varchar(100);
set @aa=(select dbo.aa('AAAAAAAAAAAA'));
select @aa








































