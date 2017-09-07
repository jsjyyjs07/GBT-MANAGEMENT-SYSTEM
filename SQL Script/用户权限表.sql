USE GBT
GO
--用户权限
SELECT DISTINCT A.UserName,A.ModuleName,A.ParentModule,A.Privilege FROM
(SELECT UserName = A.UserName,ModuleName = C.Name,ParentModule = C.ParentModule,
Privilege = D.Name FROM Users A 
INNER JOIN UserModulePermissions B ON A.InnerID = B.UsersInnerID AND A.BillNo = B.UsersBillNo
INNER JOIN Modules C ON C.InnerID = B.ModulesInnerID AND C.BillNo = B.ModulesBillNo
INNER JOIN Privilege D ON D.InnerID = B.ModulesInnerID AND D.BillNo = B.ModulesBillNo
UNION ALL
SELECT UserName = A.UserName,ModuleName = E.Name,ParentModule = E.ParentModule,
Privilege = F.Name FROM Users A
INNER JOIN UserRoles B ON A.InnerID = B.UsersInnerID AND A.BillNo = B.UsersBillNo
INNER JOIN Roles C ON C.InnerID = B.RolesInnerID AND C.BillNo = B.RolesBillNo
INNER JOIN RoleModulePermissions D ON C.InnerID = D.RolesInnerID AND C.BillNo = D.RolesBillNo
INNER JOIN Modules E ON E.InnerID = D.ModulesInnerID AND E.BillNo = D.ModulesBillNo
INNER JOIN Privilege F ON F.InnerID = D.PrivilegeInnerID AND F.BillNo = D.PrivilegeBillNo) A

























