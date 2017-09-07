SELECT A.BillNo AS '用户编号',A.EmployeeBillNo AS '工号',A.Name AS '用户名',A.Remark '备注',
A.State AS '状态',C.BillNo AS '角色编号',C.Name AS '角色名称',E.BillNo AS '模型编号',E.Name AS '模型名称',
F.BillNo ,F.Name FROM Users A 
inner join UserRoles B on A.InnerID=B.UsersInnerID and A.BillNo=B.UsersBillNo
inner join Roles C on B.RolesInnerID=C.InnerID and B.RolesBillNo=C.BillNo
inner join RoleModulePermissions D on C.InnerID=D.RolesInnerID and C.BillNo=D.RolesBillNo
inner join Modules E on D.ModulesInnerID=E.InnerID and D.ModulesBillNo=E.BillNo
inner join Privilege F on D.PrivilegeInnerID=F.InnerID and D.PrivilegeBillNo=F.BillNo


























