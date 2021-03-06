/*
Navicat SQL Server Data Transfer

Source Server         : 199
Source Server Version : 105000
Source Host           : 10.2.1.199:1433
Source Database       : EHECD_PermissionSystem
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2016-09-18 00:05:10
*/


-- ----------------------------
-- Table structure for EHECD_FunctionMenu
-- ----------------------------
DROP TABLE [dbo].[EHECD_FunctionMenu]
GO
CREATE TABLE [dbo].[EHECD_FunctionMenu] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sMenuName] nvarchar(20) NOT NULL DEFAULT '' ,
[sPID] uniqueidentifier NULL ,
[sUrl] nvarchar(50) NOT NULL DEFAULT '' ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) ,
[iOrder] int NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_FunctionMenu', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_FunctionMenu', 
'COLUMN', N'sMenuName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'sMenuName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'sMenuName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_FunctionMenu', 
'COLUMN', N'sPID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'上级菜单标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'sPID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'上级菜单标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'sPID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_FunctionMenu', 
'COLUMN', N'sUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'对应链接地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'sUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'对应链接地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'sUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_FunctionMenu', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_FunctionMenu', 
'COLUMN', N'iOrder')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'iOrder'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_FunctionMenu'
, @level2type = 'COLUMN', @level2name = N'iOrder'
GO

-- ----------------------------
-- Records of EHECD_FunctionMenu
-- ----------------------------
INSERT INTO [dbo].[EHECD_FunctionMenu] ([ID], [sMenuName], [sPID], [sUrl], [bIsDeleted], [iOrder]) VALUES (N'8D469A2F-070D-CD6E-2650-08D3DF08EEA0', N'商品管理', null, N'', N'0', N'1')
GO
GO
INSERT INTO [dbo].[EHECD_FunctionMenu] ([ID], [sMenuName], [sPID], [sUrl], [bIsDeleted], [iOrder]) VALUES (N'CDCCA5C8-EFF6-C039-E31B-08D3DF09330B', N'商品种类管理', N'8D469A2F-070D-CD6E-2650-08D3DF08EEA0', N'/Admin/GoodsCategory', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_FunctionMenu] ([ID], [sMenuName], [sPID], [sUrl], [bIsDeleted], [iOrder]) VALUES (N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'菜单管理', N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'/Admin/MenuManage', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_FunctionMenu] ([ID], [sMenuName], [sPID], [sUrl], [bIsDeleted], [iOrder]) VALUES (N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'用户管理', N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'/Admin/SystemUser', N'0', N'2')
GO
GO
INSERT INTO [dbo].[EHECD_FunctionMenu] ([ID], [sMenuName], [sPID], [sUrl], [bIsDeleted], [iOrder]) VALUES (N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'系统管理', null, N'', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_FunctionMenu] ([ID], [sMenuName], [sPID], [sUrl], [bIsDeleted], [iOrder]) VALUES (N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'角色管理', N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'/Admin/RoleManage', N'0', N'1')
GO
GO

-- ----------------------------
-- Table structure for EHECD_MenuButton
-- ----------------------------
DROP TABLE [dbo].[EHECD_MenuButton]
GO
CREATE TABLE [dbo].[EHECD_MenuButton] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sButtonName] nvarchar(20) NOT NULL DEFAULT '' ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) ,
[iOrder] int NOT NULL DEFAULT ((0)) ,
[sIcon] nvarchar(15) NOT NULL DEFAULT ('icon-add') ,
[sDataID] nvarchar(50) NULL DEFAULT '' 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_MenuButton', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_MenuButton', 
'COLUMN', N'sButtonName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'按钮名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'sButtonName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'按钮名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'sButtonName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_MenuButton', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_MenuButton', 
'COLUMN', N'iOrder')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'iOrder'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'iOrder'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_MenuButton', 
'COLUMN', N'sIcon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单ICON'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'sIcon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单ICON'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'sIcon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_MenuButton', 
'COLUMN', N'sDataID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标识符'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'sDataID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标识符'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_MenuButton'
, @level2type = 'COLUMN', @level2name = N'sDataID'
GO

-- ----------------------------
-- Records of EHECD_MenuButton
-- ----------------------------
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'BEFACFC7-E5A7-C33E-C038-08D3D4C348A4', N'删除菜单', N'0', N'2', N'icon-remove', N'del_menu_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'1D6C01C3-6346-C07C-5026-08D3D4C35598', N'编辑菜单', N'0', N'1', N'icon-edit', N'edit_menu_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'9C2E9C1A-4EE4-C683-A4D5-08D3D4C5A173', N'查询角色', N'0', N'0', N'icon-search', N'search_role_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'E9F0409C-E979-CC62-02DD-08D3D4C5B3B3', N'新建角色', N'0', N'1', N'icon-add', N'add_role_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'E35156B3-0D4C-C13B-29D3-08D3D4C6A755', N'删除角色', N'0', N'3', N'icon-remove', N'del_role_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'7D5D83C6-EC1C-CC0F-4C08-08D3D4C6D2E4', N'编辑角色', N'0', N'2', N'icon-edit', N'edit_role_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'6F85B3F8-9ACB-CA9B-F84F-08D3D4C74935', N'查询用户', N'0', N'0', N'icon-search', N'search_user_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'7C5CD6FD-9F29-C92D-853E-08D3D4C7605E', N'新建用户', N'0', N'1', N'icon-add', N'add_systemuser_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'B9FDF00F-FC25-CD11-692D-08D3D4C76C31', N'编辑用户', N'0', N'2', N'icon-edit', N'edit_systemuser_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'7335A1B5-368D-CFBC-6B84-08D3D4C777DE', N'删除用户', N'0', N'3', N'icon-remove', N'del_systemuser_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'B4D8AB85-4AB1-CF48-7C6D-08D3D65FC9E1', N'添加按钮', N'0', N'3', N'icon-add', N'add_menubutton_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'4B36B98F-A75A-C43E-752A-08D3D65FF139', N'编辑按钮', N'0', N'4', N'icon-edit', N'edit_menubutton_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'683BD737-93EB-C199-28A9-08D3D966521D', N'添加菜单', N'0', N'0', N'icon-add', N'add_menu_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'647BB4C1-CDC3-CC87-5262-08D3D96A9D73', N'删除按钮', N'0', N'5', N'icon-remove', N'del_menubutton_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'4256CB77-8426-C2E1-0A45-08D3D9F9EB9D', N'冻结/解冻用户', N'0', N'4', N'icon-filter', N'frozen_systemuser_button')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'0BFF2076-E2C5-C8D3-5663-08D3DC3C5D96', N'分配角色', N'0', N'5', N'icon-clipboard', N'distribution_role_to_systemuser')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'79EE823E-3643-C2CF-D1D1-08D3DC3EC3A3', N'分配菜单权限', N'0', N'4', N'icon-clipboard', N'distribution_menu_authority')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'6F88D006-583A-C51E-B325-08D3DC3EF683', N'分配按钮权限', N'0', N'5', N'icon-clipboard', N'distribution_button_authority')
GO
GO
INSERT INTO [dbo].[EHECD_MenuButton] ([ID], [sButtonName], [bIsDeleted], [iOrder], [sIcon], [sDataID]) VALUES (N'C6B14F22-892D-C0C1-77E3-08D3DE202D52', N'物理清除冗余数据', N'0', N'6', N'icon-clear', N'delete_database_deldata')
GO
GO

-- ----------------------------
-- Table structure for EHECD_Privilege
-- ----------------------------
DROP TABLE [dbo].[EHECD_Privilege]
GO
CREATE TABLE [dbo].[EHECD_Privilege] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sPrivilegeMaster] varchar(15) NOT NULL DEFAULT '' ,
[sPrivilegeMasterValue] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sPrivilegeAccess] varchar(15) NOT NULL DEFAULT '' ,
[sPrivilegeAccessValue] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sBelong] varchar(15) NOT NULL DEFAULT '' ,
[sBelongValue] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[bPrivilegeOperation] bit NOT NULL DEFAULT ((0)) ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'该表将记录下某种权限或者某个角色所拥有的特权
   比如 
   xx角色拥有xx菜单
   xx用户拥有xx按钮
   xx角色拥有xx按钮'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'该表将记录下某种权限或者某个角色所拥有的特权
   比如 
   xx角色拥有xx菜单
   xx用户拥有xx按钮
   xx角色拥有xx按钮'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'sPrivilegeMaster')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'配置该特权所属的对象
   
   如，
   
   这个特权是属于角色的，那么这个字段表示为role
   这个特权是属于用户的，那么这个字段表示为user'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeMaster'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'配置该特权所属的对象
   
   如，
   
   这个特权是属于角色的，那么这个字段表示为role
   这个特权是属于用户的，那么这个字段表示为user'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeMaster'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'sPrivilegeMasterValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'对应的特权所有者的唯一标识
   如特权所有者是role
   则该字段就是记录的对应的特权所有者的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeMasterValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'对应的特权所有者的唯一标识
   如特权所有者是role
   则该字段就是记录的对应的特权所有者的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeMasterValue'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'sPrivilegeAccess')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'特权类型标识
   该字段标识了这个特权的类型
   比如：
   这是一个菜单特权，则这里用menu来标识
   这是一个按钮特权，则这里用button来标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeAccess'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'特权类型标识
   该字段标识了这个特权的类型
   比如：
   这是一个菜单特权，则这里用menu来标识
   这是一个按钮特权，则这里用button来标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeAccess'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'sPrivilegeAccessValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'对应的特权
   如
   对应的菜单ID
   对应的按钮ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeAccessValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'对应的特权
   如
   对应的菜单ID
   对应的按钮ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sPrivilegeAccessValue'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'sBelong')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标识这个特权所有者的类型
   与特权所属对象对应，以指定这个特权所属的类型
   如，该特权是赋予用户的，则用user来标识
   如，该特权是赋予角色的，则用role来标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sBelong'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标识这个特权所有者的类型
   与特权所属对象对应，以指定这个特权所属的类型
   如，该特权是赋予用户的，则用user来标识
   如，该特权是赋予角色的，则用role来标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sBelong'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'sBelongValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标识这个特权是属于哪个的'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sBelongValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标识这个特权是属于哪个的'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'sBelongValue'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'bPrivilegeOperation')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否要禁用该特权 0为不禁用 1为禁用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'bPrivilegeOperation'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否要禁用该特权 0为不禁用 1为禁用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'bPrivilegeOperation'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Privilege', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除 0 未删除 1删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除 0 未删除 1删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Privilege'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO

-- ----------------------------
-- Records of EHECD_Privilege
-- ----------------------------
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'03FFD356-44D7-C9DE-C038-08D3D4C348A4', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'BEFACFC7-E5A7-C33E-C038-08D3D4C348A4', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'8FC39B5D-3F7E-CD57-5026-08D3D4C35598', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'1D6C01C3-6346-C07C-5026-08D3D4C35598', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'D3A5B2C3-DB5A-C265-A4D5-08D3D4C5A173', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'button', N'9C2E9C1A-4EE4-C683-A4D5-08D3D4C5A173', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'29E73873-6846-C93A-02DD-08D3D4C5B3B3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'button', N'E9F0409C-E979-CC62-02DD-08D3D4C5B3B3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'7012B54D-3AF7-CC55-29D3-08D3D4C6A755', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'button', N'E35156B3-0D4C-C13B-29D3-08D3D4C6A755', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'373F2FF4-078A-C0F3-4C08-08D3D4C6D2E4', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'button', N'7D5D83C6-EC1C-CC0F-4C08-08D3D4C6D2E4', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'48A024A2-4E4C-C145-F84F-08D3D4C74935', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'button', N'6F85B3F8-9ACB-CA9B-F84F-08D3D4C74935', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'633E45F9-1218-C4A1-853E-08D3D4C7605E', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'button', N'7C5CD6FD-9F29-C92D-853E-08D3D4C7605E', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'10907BF1-FCFA-C4FD-692D-08D3D4C76C31', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'button', N'B9FDF00F-FC25-CD11-692D-08D3D4C76C31', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'BF44696D-F290-C14E-6B84-08D3D4C777DE', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'button', N'7335A1B5-368D-CFBC-6B84-08D3D4C777DE', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'35C3F5F7-CB16-CD83-7C6D-08D3D65FC9E1', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'B4D8AB85-4AB1-CF48-7C6D-08D3D65FC9E1', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'755D0FA1-3780-CB42-752A-08D3D65FF139', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'4B36B98F-A75A-C43E-752A-08D3D65FF139', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'BBBE4050-D5DA-CA3E-28A9-08D3D966521D', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'683BD737-93EB-C199-28A9-08D3D966521D', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'7A5C92B3-8BDA-C5FF-5262-08D3D96A9D73', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'647BB4C1-CDC3-CC87-5262-08D3D96A9D73', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'9D30C754-D042-CAA7-0A45-08D3D9F9EB9D', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'button', N'4256CB77-8426-C2E1-0A45-08D3D9F9EB9D', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'78E5FE03-7F55-C05E-5663-08D3DC3C5D96', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'button', N'0BFF2076-E2C5-C8D3-5663-08D3DC3C5D96', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'28F225BD-A483-C57E-D1D1-08D3DC3EC3A3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'button', N'79EE823E-3643-C2CF-D1D1-08D3DC3EC3A3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'577C44DF-50D9-CF2D-B325-08D3DC3EF683', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'button', N'6F88D006-583A-C51E-B325-08D3DC3EF683', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'4B3B1A5C-6507-CD6A-77E3-08D3DE202D52', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'button', N'C6B14F22-892D-C0C1-77E3-08D3DE202D52', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'D047B65F-ED7B-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'menu', N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'D147B65F-ED7B-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'D247B65F-ED7B-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'D347B65F-ED7B-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'339D689B-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'1D6C01C3-6346-C07C-5026-08D3D4C35598', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'349D689B-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'B4D8AB85-4AB1-CF48-7C6D-08D3D65FC9E1', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'359D689B-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'4B36B98F-A75A-C43E-752A-08D3D65FF139', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'360B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'BEFACFC7-E5A7-C33E-C038-08D3D4C348A4', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'3A0B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'683BD737-93EB-C199-28A9-08D3D966521D', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'3B0B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'647BB4C1-CDC3-CC87-5262-08D3D96A9D73', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'3C0B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'C6B14F22-892D-C0C1-77E3-08D3DE202D52', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'3D0B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'9C2E9C1A-4EE4-C683-A4D5-08D3D4C5A173', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'3E0B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'E9F0409C-E979-CC62-02DD-08D3D4C5B3B3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'3F0B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'E35156B3-0D4C-C13B-29D3-08D3D4C6A755', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'400B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'7D5D83C6-EC1C-CC0F-4C08-08D3D4C6D2E4', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'410B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'79EE823E-3643-C2CF-D1D1-08D3DC3EC3A3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'420B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'6F88D006-583A-C51E-B325-08D3DC3EF683', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'430B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'6F85B3F8-9ACB-CA9B-F84F-08D3D4C74935', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'440B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'7C5CD6FD-9F29-C92D-853E-08D3D4C7605E', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'450B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'B9FDF00F-FC25-CD11-692D-08D3D4C76C31', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'460B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'7335A1B5-368D-CFBC-6B84-08D3D4C777DE', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'470B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'4256CB77-8426-C2E1-0A45-08D3D9F9EB9D', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'480B17D2-DE7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'button', N'0BFF2076-E2C5-C8D3-5663-08D3DC3C5D96', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F5A0241A-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'menu', N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F6A0241A-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F7A0241A-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F8A0241A-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'EEBC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'C6B14F22-892D-C0C1-77E3-08D3DE202D52', N'menu', N'B138CE7D-048E-4293-AEB5-210F55FCB674', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'EFBC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'9C2E9C1A-4EE4-C683-A4D5-08D3D4C5A173', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F0BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'E9F0409C-E979-CC62-02DD-08D3D4C5B3B3', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F1BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'E35156B3-0D4C-C13B-29D3-08D3D4C6A755', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F2BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'7D5D83C6-EC1C-CC0F-4C08-08D3D4C6D2E4', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F3BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'6F85B3F8-9ACB-CA9B-F84F-08D3D4C74935', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F4BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'7C5CD6FD-9F29-C92D-853E-08D3D4C7605E', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F5BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'B9FDF00F-FC25-CD11-692D-08D3D4C76C31', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F6BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'7335A1B5-368D-CFBC-6B84-08D3D4C777DE', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F7BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'4256CB77-8426-C2E1-0A45-08D3D9F9EB9D', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'F8BC1437-DF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'button', N'0BFF2076-E2C5-C8D3-5663-08D3DC3C5D96', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'A873FB3A-ED7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'menu', N'8D469A2F-070D-CD6E-2650-08D3DF08EEA0', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'A973FB3A-ED7C-E611-8D93-60A44C3DDDA6', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'menu', N'CDCCA5C8-EFF6-C039-E31B-08D3DF09330B', N'role', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'9140F0E0-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'menu', N'8D469A2F-070D-CD6E-2650-08D3DF08EEA0', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'9240F0E0-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'menu', N'CDCCA5C8-EFF6-C039-E31B-08D3DF09330B', N'role', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'9D3367EB-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'menu', N'A04BADFD-4F07-46BD-9816-A71EC4776B84', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'9E3367EB-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'9F3367EB-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'A03367EB-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'menu', N'8D469A2F-070D-CD6E-2650-08D3DF08EEA0', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'A13367EB-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'menu', N'CDCCA5C8-EFF6-C039-E31B-08D3DF09330B', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'7BEEF3F3-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'button', N'9C2E9C1A-4EE4-C683-A4D5-08D3D4C5A173', N'menu', N'13663269-A6F3-4E97-8546-E6192E61C5AC', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Privilege] ([ID], [sPrivilegeMaster], [sPrivilegeMasterValue], [sPrivilegeAccess], [sPrivilegeAccessValue], [sBelong], [sBelongValue], [bPrivilegeOperation], [bIsDeleted]) VALUES (N'7CEEF3F3-EF7C-E611-8D93-60A44C3DDDA6', N'role', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'button', N'6F85B3F8-9ACB-CA9B-F84F-08D3D4C74935', N'menu', N'7E7D35EB-A425-4288-8D0F-9ABEA6EDCEB9', N'0', N'0')
GO
GO

-- ----------------------------
-- Table structure for EHECD_Role
-- ----------------------------
DROP TABLE [dbo].[EHECD_Role]
GO
CREATE TABLE [dbo].[EHECD_Role] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sRoleName] nvarchar(20) NOT NULL DEFAULT '' ,
[bEnable] bit NOT NULL DEFAULT ((0)) ,
[dCreateTime] datetime NOT NULL DEFAULT (getdate()) ,
[dModifyTime] datetime NOT NULL DEFAULT (getdate()) ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) ,
[iOrder] int NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'sRoleName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'sRoleName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'sRoleName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'bEnable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否可用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'bEnable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否可用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'bEnable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'dCreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'dCreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'dCreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'dModifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'dModifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'dModifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_Role', 
'COLUMN', N'iOrder')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'iOrder'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_Role'
, @level2type = 'COLUMN', @level2name = N'iOrder'
GO

-- ----------------------------
-- Records of EHECD_Role
-- ----------------------------
INSERT INTO [dbo].[EHECD_Role] ([ID], [sRoleName], [bEnable], [dCreateTime], [dModifyTime], [bIsDeleted], [iOrder]) VALUES (N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'超级管理员', N'1', N'2016-09-15 20:12:17.000', N'2016-09-15 20:12:17.000', N'0', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_Role] ([ID], [sRoleName], [bEnable], [dCreateTime], [dModifyTime], [bIsDeleted], [iOrder]) VALUES (N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'普通用户', N'1', N'2016-09-16 18:39:02.000', N'2016-09-16 18:41:49.000', N'0', N'2')
GO
GO
INSERT INTO [dbo].[EHECD_Role] ([ID], [sRoleName], [bEnable], [dCreateTime], [dModifyTime], [bIsDeleted], [iOrder]) VALUES (N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'管理员', N'1', N'2016-08-28 08:41:35.003', N'2016-09-15 20:12:23.000', N'0', N'1')
GO
GO

-- ----------------------------
-- Table structure for EHECD_SystemLog
-- ----------------------------
DROP TABLE [dbo].[EHECD_SystemLog]
GO
CREATE TABLE [dbo].[EHECD_SystemLog] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sDomainDetail] nvarchar(100) NOT NULL DEFAULT '' ,
[sLoginName] nvarchar(20) NOT NULL DEFAULT '' ,
[sUserName] nvarchar(15) NOT NULL DEFAULT '' ,
[dInsertTime] datetime NOT NULL DEFAULT (getdate()) ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) ,
[sIPAddress] varchar(25) NOT NULL DEFAULT '' ,
[sDoMainId] varchar(255) NOT NULL DEFAULT '' ,
[tDoType] smallint NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'sDomainDetail')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sDomainDetail'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sDomainDetail'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'sLoginName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sLoginName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sLoginName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'sUserName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sUserName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sUserName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'dInsertTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'dInsertTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'dInsertTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'sIPAddress')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sIPAddress'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sIPAddress'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'sDoMainId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sDoMainId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'sDoMainId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemLog', 
'COLUMN', N'tDoType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类型 short'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'tDoType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类型 short'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemLog'
, @level2type = 'COLUMN', @level2name = N'tDoType'
GO

-- ----------------------------
-- Records of EHECD_SystemLog
-- ----------------------------
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'CCEA921F-9028-C91D-CC76-08D3DEBB49D7', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:27:16.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D634A4AA-D56B-CFC1-6816-08D3DEBB7214', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:28:24.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'ACC56F96-41D1-CE77-35DB-08D3DEBC89A8', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:36:13.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'074782D8-8088-CBC6-A597-08D3DEBCA097', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:36:51.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D4B105DC-F151-CF69-D372-08D3DEBCA770', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:37:03.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'B3884A9D-2E80-C18B-DB6C-08D3DEBCF963', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:39:20.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'9CC62BDD-F592-CAAC-B228-08D3DEBD018D', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 13:39:34.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'87B03E96-EE73-C624-3AF7-08D3DEC9D0FF', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 15:11:16.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'8ED58C98-D684-C51D-A144-08D3DEC9DBC4', N'系统用户分配角色菜单按钮d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'管理员', N'2016-09-17 15:11:34.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'9E95B12E-1A7D-CF84-06F0-08D3DEC9FED0', N'系统用户添加用户8b087a87-749b-c6d0-31eb-08d3dec9fece', N'admin', N'管理员', N'2016-09-17 15:12:33.000', N'0', N'127.0.0.1', N'8b087a87-749b-c6d0-31eb-08d3dec9fece', N'16392')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'230AF62A-9E95-CFF1-E1FD-08D3DECA096E', N'系统用户编辑用户8b087a87-749b-c6d0-31eb-08d3dec9fece', N'admin', N'管理员', N'2016-09-17 15:12:51.000', N'0', N'127.0.0.1', N'8b087a87-749b-c6d0-31eb-08d3dec9fece', N'4104')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'B267ACA6-7DFF-CDFE-E748-08D3DECA0DF1', N'分配系统用户角色8b087a87-749b-c6d0-31eb-08d3dec9fece', N'admin', N'管理员', N'2016-09-17 15:12:58.000', N'0', N'127.0.0.1', N'8b087a87-749b-c6d0-31eb-08d3dec9fece', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'19B2A021-71D4-C4E5-9799-08D3DECA1686', N'分配系统用户角色685d010c-d3bd-c5c6-db67-08d3dae88320', N'admin', N'管理员', N'2016-09-17 15:13:13.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'8AEF90C3-EC97-CAC6-FE7F-08D3DECA203F', N'系统用户分配角色菜单d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'管理员', N'2016-09-17 15:13:29.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'89D60012-DEA9-C859-2FF5-08D3DECA24CC', N'系统用户分配角色菜单按钮d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'管理员', N'2016-09-17 15:13:37.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'7085F6EC-C67D-C8CC-34AA-08D3DECCA4AB', N'系统用户添加角色e01aacd2-29a2-c135-78eb-08d3decca4a4', N'admin', N'管理员', N'2016-09-17 15:31:30.000', N'0', N'127.0.0.1', N'e01aacd2-29a2-c135-78eb-08d3decca4a4', N'16400')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D20A03B8-5522-C95F-5A74-08D3DECCB0B5', N'系统用户删除角色e01aacd2-29a2-c135-78eb-08d3decca4a4', N'admin', N'管理员', N'2016-09-17 15:31:50.000', N'0', N'127.0.0.1', N'e01aacd2-29a2-c135-78eb-08d3decca4a4', N'8208')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'38CC6649-21D5-C416-313D-08D3DECCB5AB', N'系统用户清除了权限系统的逻辑删除数据', N'admin', N'管理员', N'2016-09-17 15:31:59.000', N'0', N'127.0.0.1', N'', N'8219')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'DC133FE3-B98C-C486-DB3F-08D3DEDD1BC9', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:29:22.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'658EBCBB-7FCC-C716-6B88-08D3DEDD2AD8', N'分配系统用户角色685d010c-d3bd-c5c6-db67-08d3dae88320', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:29:47.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'F4DCA2D0-C25A-CF52-03E6-08D3DEDD2C26', N'系统用户退出登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:29:49.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'DDED9DFF-1D51-C3A0-2644-08D3DEDD319D', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:29:59.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'52206E38-7824-C1ED-4611-08D3DEDDA187', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:33:06.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'2BE3CC87-68DE-C02B-0A5F-08D3DEDE25ED', N'系统用户退出登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:36:48.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'CFDB50F2-C3A6-C84E-5A43-08D3DEDE2B1A', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 17:36:57.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'98313EB9-8E9B-C56D-9ABE-08D3DEEC8A5D', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 19:19:50.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'78176B11-16B4-C1B8-58E0-08D3DEEC9FBA', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 19:20:26.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'07E55B4B-2E91-CEE1-F7A1-08D3DEECA61A', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 19:20:36.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'C797CFF5-699C-CB9B-22CA-08D3DEECA9FC', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 19:20:43.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'4FBBBA45-08B3-C49F-38DC-08D3DEECAD7D', N'系统用户分配角色菜单按钮d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'管理员', N'2016-09-17 19:20:49.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'0F1ACD79-2E98-CE2B-5287-08D3DEECB4DB', N'系统用户清除了权限系统的逻辑删除数据', N'admin', N'管理员', N'2016-09-17 19:21:01.000', N'0', N'127.0.0.1', N'', N'8219')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'AD57E5A6-F3D3-C207-F1EA-08D3DEECECAE', N'系统用户删除用户8b087a87-749b-c6d0-31eb-08d3dec9fece', N'admin', N'管理员', N'2016-09-17 19:22:35.000', N'0', N'127.0.0.1', N'8b087a87-749b-c6d0-31eb-08d3dec9fece', N'8200')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'2AB96B18-A075-CAD7-5814-08D3DEECEF9F', N'系统用户清除了权限系统的逻辑删除数据', N'admin', N'管理员', N'2016-09-17 19:22:40.000', N'0', N'127.0.0.1', N'', N'8219')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'C9D0316E-41B1-CD9F-B8CC-08D3DEF1C018', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 19:57:08.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'B1F1F957-64D0-C113-5A73-08D3DEF3AB15', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 20:10:51.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'F5644159-4F30-CDFB-38AA-08D3DEF58098', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2失败', N'admin', N'管理员', N'2016-09-17 20:23:59.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'BA1B92C6-13E2-CCD9-BD39-08D3DEF734D0', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2失败', N'admin', N'管理员', N'2016-09-17 20:36:11.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'DB66EFD4-B3CC-C9E1-6F30-08D3DEF8DBC6', N'系统用户清除了权限系统的逻辑删除数据', N'admin', N'管理员', N'2016-09-17 20:48:00.000', N'0', N'127.0.0.1', N'', N'8219')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'CB79DDF8-0F99-C042-32CF-08D3DEF9FB03', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 20:56:02.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'0CE437DC-5965-C85B-4AC0-08D3DF00E386', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 21:45:29.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'E7AB70D2-249C-C482-26B7-08D3DF00EC22', N'系统用户分配角色菜单689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 21:45:44.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'061B9D21-2603-C6FB-CB9D-08D3DF00EEEA', N'系统用户分配角色菜单d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'管理员', N'2016-09-17 21:45:49.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'111C7905-0ACF-CE8A-5306-08D3DF00F663', N'系统用户清除了权限系统的逻辑删除数据', N'admin', N'管理员', N'2016-09-17 21:46:01.000', N'0', N'127.0.0.1', N'', N'8219')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D2B6B02F-B447-C4DF-413A-08D3DF01D4DC', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 21:52:14.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'C96F1624-BF7B-CAA2-3EF4-08D3DF029C1F', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 21:57:49.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'99FC1785-D49D-C64C-D04C-08D3DF02B6E8', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'管理员', N'2016-09-17 21:58:34.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'2E57C5F9-6913-C6D8-8E45-08D3DF02FEF3', N'系统用户分配角色菜单689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 22:00:34.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'C4661081-CA36-C089-8500-08D3DF031E20', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'管理员', N'2016-09-17 22:01:27.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'F38B40FD-F10D-CC59-EF80-08D3DF035581', N'系统用户退出登录', N'admin', N'管理员', N'2016-09-17 22:03:00.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'5B882EE3-274E-C245-DB96-08D3DF035A69', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 22:03:08.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'C9DF9C4C-7521-C3B7-8ACF-08D3DF03653F', N'分配系统用户角色685d010c-d3bd-c5c6-db67-08d3dae88320', N'admin', N'管理员', N'2016-09-17 22:03:26.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'748AF1C9-DA07-C822-683C-08D3DF0368AB', N'系统用户退出登录', N'admin', N'管理员', N'2016-09-17 22:03:32.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'0BEFB8BE-B98E-C96F-EAD9-08D3DF036DE4', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 22:03:41.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'F2D08BFA-65F3-C00C-89CB-08D3DF038634', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 22:04:21.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'5210ADAB-55DC-CA94-4CE6-08D3DF03898C', N'系统用户退出登录', N'admin', N'管理员', N'2016-09-17 22:04:27.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'42728B87-C982-CD7E-0B8D-08D3DF038E07', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-17 22:04:35.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'CCFCAEF5-1AF5-C33D-0A21-08D3DF07A5AE', N'系统用户登录', N'admin', N'管理员', N'2016-09-17 22:33:52.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'38212AFB-C5C0-C50C-C319-08D3DF07B5A2', N'系统用户退出登录', N'admin', N'管理员', N'2016-09-17 22:34:19.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'7EF793F9-191B-CE2F-5D6F-08D3DF07B847', N'系统用户登录', N'admin', N'系统管理员', N'2016-09-17 22:34:23.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'BA9CD9BD-5699-CEFC-D45D-08D3DF08EEA1', N'系统用户创建菜单商品管理', N'admin', N'系统管理员', N'2016-09-17 22:43:04.000', N'0', N'127.0.0.1', N'8d469a2f-070d-cd6e-2650-08d3df08eea0', N'16385')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'919934CB-196C-C796-3110-08D3DF09330C', N'系统用户创建菜单商品种类管理', N'admin', N'系统管理员', N'2016-09-17 22:44:59.000', N'0', N'127.0.0.1', N'cdcca5c8-eff6-c039-e31b-08d3df09330b', N'16385')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'48790F82-7798-C772-998C-08D3DF0E5419', N'系统用户在菜单cdcca5c8-eff6-c039-e31b-08d3df09330b下添加按钮1', N'admin', N'系统管理员', N'2016-09-17 23:21:42.000', N'0', N'127.0.0.1', N'691d0618-47a6-c4bf-ebaa-08d3df0e5415,cdcca5c8-eff6-c039-e31b-08d3df09330b', N'16386')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'B0A60F92-9431-C6B2-A14C-08D3DF0E5B91', N'系统用户删除菜单按钮691d0618-47a6-c4bf-ebaa-08d3df0e5415', N'admin', N'系统管理员', N'2016-09-17 23:21:54.000', N'0', N'127.0.0.1', N'691d0618-47a6-c4bf-ebaa-08d3df0e5415', N'8194')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'9BAD5FBE-B5E2-CF4F-7914-08D3DF0E5D3D', N'系统用户清除了权限系统的逻辑删除数据', N'admin', N'系统管理员', N'2016-09-17 23:21:57.000', N'0', N'127.0.0.1', N'', N'8219')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'4E048C8C-5A1A-C62B-D3EE-08D3DF111705', N'分配系统用户角色893b8fa1-f002-4206-936b-1b357a478b34', N'admin', N'系统管理员', N'2016-09-17 23:41:28.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D145D716-EEA7-CA99-94DF-08D3DF111FCA', N'系统用户分配角色菜单a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'系统管理员', N'2016-09-17 23:41:43.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D88F418E-E45A-C506-50BB-08D3DF1146FA', N'系统用户登录', N'admin', N'系统管理员', N'2016-09-17 23:42:48.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'E1495720-2ED7-C523-4752-08D3DF11DE5D', N'系统用户分配角色菜单按钮a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'admin', N'系统管理员', N'2016-09-17 23:47:02.000', N'0', N'127.0.0.1', N'a0eb4d90-3276-cc7a-19e9-08d3dd61893e', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'4526345A-DB5D-CFDE-6073-08D3DF11F0B5', N'系统用户更新菜单按钮0bff2076-e2c5-c8d3-5663-08d3dc3c5d96', N'admin', N'系统管理员', N'2016-09-17 23:47:33.000', N'0', N'127.0.0.1', N'0bff2076-e2c5-c8d3-5663-08d3dc3c5d96', N'4098')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'5779934A-2D8E-C482-B372-08D3DF11F7B4', N'系统用户更新菜单按钮79ee823e-3643-c2cf-d1d1-08d3dc3ec3a3', N'admin', N'系统管理员', N'2016-09-17 23:47:45.000', N'0', N'127.0.0.1', N'79ee823e-3643-c2cf-d1d1-08d3dc3ec3a3', N'4098')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'61F6F831-6632-C5A7-3F19-08D3DF11FA9E', N'系统用户更新菜单按钮6f88d006-583a-c51e-b325-08d3dc3ef683', N'admin', N'系统管理员', N'2016-09-17 23:47:50.000', N'0', N'127.0.0.1', N'6f88d006-583a-c51e-b325-08d3dc3ef683', N'4098')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'B49653EB-AB76-C569-AF73-08D3DF13C5BF', N'系统用户分配角色菜单689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'系统管理员', N'2016-09-18 00:00:40.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'2C6F7EB9-A1D8-C512-0637-08D3DF13D036', N'系统用户分配角色菜单d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'系统管理员', N'2016-09-18 00:00:57.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28689')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'AA55CD1A-C150-C322-FDA9-08D3DF13D8C1', N'系统用户分配角色菜单按钮d89d5e7e-931a-cae2-0101-08d3de1dacb6', N'admin', N'系统管理员', N'2016-09-18 00:01:12.000', N'0', N'127.0.0.1', N'd89d5e7e-931a-cae2-0101-08d3de1dacb6', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'02444662-B9E6-CDFD-1907-08D3DF13EEDF', N'系统用户分配角色菜单按钮689a7510-70ef-42cd-9ad1-1611b29061d2', N'admin', N'系统管理员', N'2016-09-18 00:01:49.000', N'0', N'127.0.0.1', N'689a7510-70ef-42cd-9ad1-1611b29061d2', N'28690')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'781AF4CC-BDAC-CF7B-9C1E-08D3DF13F899', N'分配系统用户角色893b8fa1-f002-4206-936b-1b357a478b34', N'admin', N'系统管理员', N'2016-09-18 00:02:05.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'D0AA6533-A3F7-C74D-50A5-08D3DF13FC34', N'分配系统用户角色685d010c-d3bd-c5c6-db67-08d3dae88320', N'admin', N'系统管理员', N'2016-09-18 00:02:11.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'20504')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'5FDEF015-D0B4-C162-C4C7-08D3DF13FE78', N'系统用户退出登录', N'admin', N'系统管理员', N'2016-09-18 00:02:15.000', N'0', N'127.0.0.1', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'FEA28804-436C-C1D2-AF4F-08D3DF140876', N'系统用户登录', N'yangyukun', N'杨瑜堃', N'2016-09-18 00:02:32.000', N'0', N'', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'DBCECCFE-4D19-C753-6416-08D3DF141726', N'系统用户退出登录', N'yangyukun', N'杨瑜堃', N'2016-09-18 00:02:57.000', N'0', N'127.0.0.1', N'685d010c-d3bd-c5c6-db67-08d3dae88320', N'12')
GO
GO
INSERT INTO [dbo].[EHECD_SystemLog] ([ID], [sDomainDetail], [sLoginName], [sUserName], [dInsertTime], [bIsDeleted], [sIPAddress], [sDoMainId], [tDoType]) VALUES (N'4260DF7B-60E0-C0AF-452A-08D3DF141990', N'系统用户登录', N'admin', N'系统管理员', N'2016-09-18 00:03:01.000', N'0', N'', N'893b8fa1-f002-4206-936b-1b357a478b34', N'12')
GO
GO

-- ----------------------------
-- Table structure for EHECD_SystemUser
-- ----------------------------
DROP TABLE [dbo].[EHECD_SystemUser]
GO
CREATE TABLE [dbo].[EHECD_SystemUser] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sLoginName] nvarchar(20) NOT NULL DEFAULT '' ,
[sPassWord] nvarchar(50) NOT NULL DEFAULT '' ,
[sUserName] nvarchar(15) NOT NULL DEFAULT '' ,
[tUserState] tinyint NOT NULL DEFAULT ((0)) ,
[tUserType] tinyint NOT NULL DEFAULT ((0)) ,
[sUserNickName] nvarchar(20) NOT NULL DEFAULT '' ,
[dCreateTime] datetime NOT NULL DEFAULT (getdate()) ,
[dLastLoginTime] datetime NOT NULL DEFAULT (getdate()) ,
[sProvice] nvarchar(20) NOT NULL DEFAULT '' ,
[sCity] nvarchar(20) NOT NULL DEFAULT '' ,
[sCounty] nvarchar(20) NOT NULL DEFAULT '' ,
[sAddress] nvarchar(30) NOT NULL DEFAULT '' ,
[tSex] tinyint NOT NULL DEFAULT ((0)) ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) ,
[sMobileNum] nvarchar(25) NOT NULL DEFAULT '' 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sLoginName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sLoginName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sLoginName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sPassWord')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sPassWord'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sPassWord'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sUserName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sUserName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sUserName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'tUserState')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户状态 0：正常 1：冻结'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'tUserState'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户状态 0：正常 1：冻结'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'tUserState'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'tUserType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户类型 0：后台用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'tUserType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户类型 0：后台用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'tUserType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sUserNickName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sUserNickName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sUserNickName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'dCreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'dCreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'dCreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'dLastLoginTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'dLastLoginTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'dLastLoginTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sProvice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所在省'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sProvice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所在省'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sProvice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sCity')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所在市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sCity'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所在市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sCity'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sCounty')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所在地区'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sCounty'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所在地区'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sCounty'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sAddress')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'详细地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sAddress'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'详细地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sAddress'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'tSex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'性别 0:女 1:男'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'tSex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'性别 0:女 1:男'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'tSex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser', 
'COLUMN', N'sMobileNum')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sMobileNum'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser'
, @level2type = 'COLUMN', @level2name = N'sMobileNum'
GO

-- ----------------------------
-- Records of EHECD_SystemUser
-- ----------------------------
INSERT INTO [dbo].[EHECD_SystemUser] ([ID], [sLoginName], [sPassWord], [sUserName], [tUserState], [tUserType], [sUserNickName], [dCreateTime], [dLastLoginTime], [sProvice], [sCity], [sCounty], [sAddress], [tSex], [bIsDeleted], [sMobileNum]) VALUES (N'685D010C-D3BD-C5C6-DB67-08D3DAE88320', N'yangyukun', N'202CB962AC59075B964B07152D234B70', N'杨瑜堃', N'0', N'0', N'后台用户杨瑜堃', N'2016-09-12 16:40:53.000', N'2016-09-18 00:02:32.000', N'四川省', N'成都市', N'金牛区', N'光荣北路', N'1', N'0', N'13540685528')
GO
GO
INSERT INTO [dbo].[EHECD_SystemUser] ([ID], [sLoginName], [sPassWord], [sUserName], [tUserState], [tUserType], [sUserNickName], [dCreateTime], [dLastLoginTime], [sProvice], [sCity], [sCounty], [sAddress], [tSex], [bIsDeleted], [sMobileNum]) VALUES (N'893B8FA1-F002-4206-936B-1B357A478B34', N'admin', N'202cb962ac59075b964b07152d234b70', N'系统管理员', N'0', N'0', N'超级管理员', N'2016-08-28 08:39:33.260', N'2016-09-18 00:03:01.000', N'四川省', N'成都市', N'青羊区', N'光华中心', N'0', N'0', N'13888888888')
GO
GO

-- ----------------------------
-- Table structure for EHECD_SystemUser_R_Role
-- ----------------------------
DROP TABLE [dbo].[EHECD_SystemUser_R_Role]
GO
CREATE TABLE [dbo].[EHECD_SystemUser_R_Role] (
[ID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sUserID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[sRoleID] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[bIsDeleted] bit NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser_R_Role', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'唯一标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser_R_Role', 
'COLUMN', N'sUserID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'sUserID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'sUserID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser_R_Role', 
'COLUMN', N'sRoleID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'sRoleID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'sRoleID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EHECD_SystemUser_R_Role', 
'COLUMN', N'bIsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EHECD_SystemUser_R_Role'
, @level2type = 'COLUMN', @level2name = N'bIsDeleted'
GO

-- ----------------------------
-- Records of EHECD_SystemUser_R_Role
-- ----------------------------
INSERT INTO [dbo].[EHECD_SystemUser_R_Role] ([ID], [sUserID], [sRoleID], [bIsDeleted]) VALUES (N'3E758992-3F97-C819-2554-08D3DD61B159', N'893B8FA1-F002-4206-936B-1B357A478B34', N'A0EB4D90-3276-CC7A-19E9-08D3DD61893E', N'0')
GO
GO
INSERT INTO [dbo].[EHECD_SystemUser_R_Role] ([ID], [sUserID], [sRoleID], [bIsDeleted]) VALUES (N'40952954-99E5-C4FE-B5CD-08D3DF03653D', N'685D010C-D3BD-C5C6-DB67-08D3DAE88320', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'1')
GO
GO
INSERT INTO [dbo].[EHECD_SystemUser_R_Role] ([ID], [sUserID], [sRoleID], [bIsDeleted]) VALUES (N'246C05E1-CD52-C058-FDA8-08D3DF111703', N'893B8FA1-F002-4206-936B-1B357A478B34', N'689A7510-70EF-42CD-9AD1-1611B29061D2', N'1')
GO
GO
INSERT INTO [dbo].[EHECD_SystemUser_R_Role] ([ID], [sUserID], [sRoleID], [bIsDeleted]) VALUES (N'51A53E13-DD35-CD81-17F4-08D3DF13FC33', N'685D010C-D3BD-C5C6-DB67-08D3DAE88320', N'D89D5E7E-931A-CAE2-0101-08D3DE1DACB6', N'0')
GO
GO

-- ----------------------------
-- Indexes structure for table EHECD_FunctionMenu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_FunctionMenu
-- ----------------------------
ALTER TABLE [dbo].[EHECD_FunctionMenu] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Checks structure for table EHECD_FunctionMenu
-- ----------------------------
ALTER TABLE [dbo].[EHECD_FunctionMenu] ADD CHECK (([bIsDeleted]>=(0) AND [bIsDeleted]<=(1)))
GO

-- ----------------------------
-- Indexes structure for table EHECD_MenuButton
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_MenuButton
-- ----------------------------
ALTER TABLE [dbo].[EHECD_MenuButton] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Checks structure for table EHECD_MenuButton
-- ----------------------------
ALTER TABLE [dbo].[EHECD_MenuButton] ADD CHECK (([bIsDeleted]>=(0) AND [bIsDeleted]<=(1)))
GO

-- ----------------------------
-- Indexes structure for table EHECD_Privilege
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_Privilege
-- ----------------------------
ALTER TABLE [dbo].[EHECD_Privilege] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Checks structure for table EHECD_Privilege
-- ----------------------------
ALTER TABLE [dbo].[EHECD_Privilege] ADD CHECK (([bIsDeleted]>=(0) AND [bIsDeleted]<=(1)))
GO

-- ----------------------------
-- Indexes structure for table EHECD_Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_Role
-- ----------------------------
ALTER TABLE [dbo].[EHECD_Role] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Checks structure for table EHECD_Role
-- ----------------------------
ALTER TABLE [dbo].[EHECD_Role] ADD CHECK (([bIsDeleted]>=(0) AND [bIsDeleted]<=(1)))
GO

-- ----------------------------
-- Indexes structure for table EHECD_SystemLog
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_SystemLog
-- ----------------------------
ALTER TABLE [dbo].[EHECD_SystemLog] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table EHECD_SystemUser
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_SystemUser
-- ----------------------------
ALTER TABLE [dbo].[EHECD_SystemUser] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Checks structure for table EHECD_SystemUser
-- ----------------------------
ALTER TABLE [dbo].[EHECD_SystemUser] ADD CHECK (([tUserState]>=(0) AND [tUserState]<=(10)))
GO
ALTER TABLE [dbo].[EHECD_SystemUser] ADD CHECK (([tUserType]>=(0) AND [tUserType]<=(10)))
GO
ALTER TABLE [dbo].[EHECD_SystemUser] ADD CHECK (([tSex]>=(0) AND [tSex]<=(60)))
GO

-- ----------------------------
-- Indexes structure for table EHECD_SystemUser_R_Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EHECD_SystemUser_R_Role
-- ----------------------------
ALTER TABLE [dbo].[EHECD_SystemUser_R_Role] ADD PRIMARY KEY ([ID])
GO
