SELECT A.BillNo AS '�û����',A.EmployeeBillNo AS '����',A.Name AS '�û���',A.Remark '��ע',
A.State AS '״̬',C.BillNo AS '��ɫ���',C.Name AS '��ɫ����',E.BillNo AS 'ģ�ͱ��',E.Name AS 'ģ������',
F.BillNo ,F.Name FROM Users A 
inner join UserRoles B on A.InnerID=B.UsersInnerID and A.BillNo=B.UsersBillNo
inner join Roles C on B.RolesInnerID=C.InnerID and B.RolesBillNo=C.BillNo
inner join RoleModulePermissions D on C.InnerID=D.RolesInnerID and C.BillNo=D.RolesBillNo
inner join Modules E on D.ModulesInnerID=E.InnerID and D.ModulesBillNo=E.BillNo
inner join Privilege F on D.PrivilegeInnerID=F.InnerID and D.PrivilegeBillNo=F.BillNo


























