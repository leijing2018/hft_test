-- 模型数据建造  t_staff_sync 表数据造真实部门和项目编号 
INSERT INTO `osms`.`t_staff_sync`(`ID`, `STAFF_NAME`, `ACCOUNT`, `SUPPLIER_CODE`, `SKILL_CODE`, `SKILL_LEVEL_CODE`, `DPT_CODE`, `PRO_CODE`, `LEADER_NAME`, `LEADER_ACCOUNT`, `ENTRY_DATE`, `WORK_PLACE`, `HIRE_STATUS`, `LEAVE_DATE`, `CREATED_BY`, `CREATED_TIME`, `BATCH_NO`, `SYNC_TIME`) VALUES ('181015001', '张三', 'v-zhangsan', '1', '12', '14', '4', '6', '李四', 'v-lisi', '2018-09-01', '武汉', 0, NULL, '罗干', '2018-10-15 09:20:11', NULL, NULL);
INSERT INTO `osms`.`t_staff_sync`(`ID`, `STAFF_NAME`, `ACCOUNT`, `SUPPLIER_CODE`, `SKILL_CODE`, `SKILL_LEVEL_CODE`, `DPT_CODE`, `PRO_CODE`, `LEADER_NAME`, `LEADER_ACCOUNT`, `ENTRY_DATE`, `WORK_PLACE`, `HIRE_STATUS`, `LEAVE_DATE`, `CREATED_BY`, `CREATED_TIME`, `BATCH_NO`, `SYNC_TIME`) VALUES ('181015002', '李四', 'v-lisi', '1', '12', '14', '4', '6', '李四', 'v-lisi', '2018-09-02', '武汉', 0, NULL, '罗干', '2018-10-15 09:20:11', NULL, NULL);
INSERT INTO `osms`.`t_staff_sync`(`ID`, `STAFF_NAME`, `ACCOUNT`, `SUPPLIER_CODE`, `SKILL_CODE`, `SKILL_LEVEL_CODE`, `DPT_CODE`, `PRO_CODE`, `LEADER_NAME`, `LEADER_ACCOUNT`, `ENTRY_DATE`, `WORK_PLACE`, `HIRE_STATUS`, `LEAVE_DATE`, `CREATED_BY`, `CREATED_TIME`, `BATCH_NO`, `SYNC_TIME`) VALUES ('181015003', '王五', 'v-wangwu', '2', '12', '14', '4', '6', '李四', 'v-lisi', '2018-09-03', '武汉', 0, NULL, '罗干', '2018-10-15 09:20:11', NULL, NULL);
INSERT INTO `osms`.`t_staff_sync`(`ID`, `STAFF_NAME`, `ACCOUNT`, `SUPPLIER_CODE`, `SKILL_CODE`, `SKILL_LEVEL_CODE`, `DPT_CODE`, `PRO_CODE`, `LEADER_NAME`, `LEADER_ACCOUNT`, `ENTRY_DATE`, `WORK_PLACE`, `HIRE_STATUS`, `LEAVE_DATE`, `CREATED_BY`, `CREATED_TIME`, `BATCH_NO`, `SYNC_TIME`) VALUES ('181015004', '赵六', 'v-zhaoliu', '2', '12', '14', '4', '6', '李四', 'v-lisi', '2018-09-04', '武汉', 0, NULL, '罗干', '2018-10-15 09:20:11', NULL, NULL);

-- 团建费用主表：一个部门多个项目组 一个项目组有多次团建活动
INSERT INTO `osms`.`t_team_building`(`ID`, `DPT_ID`, `PRO_ID`, `NAME`, `BUILDING_DATE`, `NOTE`, `AVG_FEE`, `CREATED_BY`, `CREATED_TIME`, `UPDATED_BY`, `UPDATED_TIME`) 
VALUES ('2018102101', '50903221', '15cf59d8a76445c8bd08c2fdbae7c755', '泡温泉', '2018-10-19', '自带泳装', 200.00, '孙悟空', '2018-10-20 20:17:53', NULL, NULL);
INSERT INTO `osms`.`t_team_building`(`ID`, `DPT_ID`, `PRO_ID`, `NAME`, `BUILDING_DATE`, `NOTE`, `AVG_FEE`, `CREATED_BY`, `CREATED_TIME`, `UPDATED_BY`, `UPDATED_TIME`) 
VALUES ('2018102102', '50903221', '15cf59d8a76445c8bd08c2fdbae7c755', '清江画廊', '2018-10-18', '自带雨伞', 150.00, '孙悟空', '2018-10-19 20:19:21', NULL, NULL);
INSERT INTO `osms`.`t_team_building`(`ID`, `DPT_ID`, `PRO_ID`, `NAME`, `BUILDING_DATE`, `NOTE`, `AVG_FEE`, `CREATED_BY`, `CREATED_TIME`, `UPDATED_BY`, `UPDATED_TIME`) 
VALUES ('2018102103', '50903221', '17e5a733f2a14db6a43f7523fdb6ea07', '吃火锅', '2018-10-21', '不准开车', 200.00, '孙大圣', '2018-10-20 20:20:33', NULL, NULL);
INSERT INTO `osms`.`t_team_building`(`ID`, `DPT_ID`, `PRO_ID`, `NAME`, `BUILDING_DATE`, `NOTE`, `AVG_FEE`, `CREATED_BY`, `CREATED_TIME`, `UPDATED_BY`, `UPDATED_TIME`) 
VALUES ('2018102104', '50903222', 'cf698898441941b5baa82b41b1d489bc', '飘流', '2018-10-23', '自带纸巾', 180.00, '孙大圣', '2018-10-21 20:21:54', NULL, NULL);

-- 团建人员表：一次活动 多个员工
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112101', '2018102101', 'v-zhangsan', '张三', 0, 1000.00, 200.00, '1', '孙悟空', '2018-10-19 20:30:38');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112102', '2018102101', 'v-lisi', '李四', 0, 1000.00, 200.00, '1', '孙悟空', '2018-10-21 20:32:02');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112103', '2018102101', 'v-wangwu', '王五', 0, 1500.00, 200.00, '2', '孙悟空', '2018-10-21 20:33:15');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112104', '2018102102', 'v-wangwu', '王五', 0, 1600.00, 150.00, '2', '孙悟空', '2018-10-21 20:34:19');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112105', '2018102102', 'v-zhaoliu', '赵六', 0, 1600.00, 150.00, '2', '孙悟空', '2018-10-21 20:35:24');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112106', '2018102102', 'v-lisi', '李四', 0, 1000.00, 150.00, '1', '孙悟空', '2018-10-21 20:36:25');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112107', '2018102103', 'v-liqi', '李七', 0, 1500.00, 200.00, '3', '孙大圣', '2018-10-21 20:39:11');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112108', '2018102103', 'v-wangba', '王八', 0, 1500.00, 200.00, '4', '孙大圣', '2018-10-21 20:40:13');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112109', '2018102103', 'v-zhangsan', '张三', 0, 1000.00, 200.00, '1', '孙大圣', '2018-10-21 20:41:24');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112110', '2018102104', 'v-lisi', '李四', 0, 1000.00, 180.00, '1', '孙大圣', '2018-10-21 20:42:38');
INSERT INTO `osms`.`t_team_building_staff`(`ID`, `TEAM_BUILDING_ID`, `AD_NO`, `NAME`, `STTS`, `SURPLUS_AMOUT`, `USED_AMOUT`, `SUPPLIER_ID`, `CREATED_BY`, `CREATED_TIME`) 
VALUES ('2018112111', '2018102104', 'v-wangwu', '王五', 0, 1000.00, 180.00, '2', '孙大圣', '2018-10-21 20:43:37');

-- 雷同sql语句优化合并 
-- 团建费维护  列表查询  时间排序
select ID,BUILDING_DATE,PRO_ID,NAME,NOTE,'待结算' AS STTS, AVG_FEE from t_team_building where BUILDING_DATE='2018-10-18' or NAME='清江画廊';

-- 团建费维护  人员明细查看 详情  排序规则
SELECT NAME,AD_NO,SUPPLIER_ID FROM t_team_building_staff WHERE TEAM_BUILDING_ID = (SELECT ID FROM t_team_building WHERE ID='2018102102'); -- 优化请求参数 

-- 团建费用维护  增加  验证excel表格数据的合法性
insert t_team_building 单条
insert t_team_building_staff 多条 批量新增

-- 团建费用维护  编辑  模板导入数据
select ID,BUILDING_DATE,PRO_ID,NAME,NOTE from t_team_building where id = '2018102102'
select NAME,AD_NO,SUPPLIER_ID,SURPLUS_AMOUT,USED_AMOUT from t_team_building_staff where TEAM_BUILDING_ID = '2018102102';

update t_team_building 单条 
update t_team_building_staff 多条 批量修改 -- 验证excel数据

-- 按照项目组列表查询  人员详情
select ID,BUILDING_DATE,PRO_ID,NAME,NOTE,'待结算' AS STTS, AVG_FEE from t_team_building where BUILDING_DATE='2018-10-18' or NAME='清江画廊';
SELECT NAME,AD_NO,SUPPLIER_ID FROM t_team_building_staff WHERE TEAM_BUILDING_ID = '2018102102'; -- 人员详情

-- 按人员查询
   select id from t_team_building where dpt_id='' or pro_id='' or name=''; -- 多个团建活动  多个id
   select NAME,AD_NO,USED_AMOUT,SURPLUS_AMOUT from t_team_building_staff where TEAM_BUILDING_ID in (select  id  from t_team_building where dpt_id='' or pro_id='' or name='');
   -- 部门 项目
   select dpt_id,pro_id from t_team_building where dpt_id='' or pro_id='' or name='';
   -- 入职日期 离职日期  根据域账号查询
   select ENTRY_DATE,LEAVE_DATE from t_staff_sync where ACCOUNT='';
   
   -- 合并sql语句
    select a.NAME,a.AD_NO,a.USED_AMOUT,a.SURPLUS_AMOUT,b.DPT_ID,b.pro_id ,c.ENTRY_DATE,c.LEAVE_DATE
    from t_team_building_staff a, t_team_building b, t_staff_sync c
    where a.TEAM_BUILDING_ID = b.id and a.TEAM_BUILDING_ID in (select  id  from t_team_building where dpt_id='50903221' or pro_id='' or name='')
    and a.AD_NO = c.ACCOUNT;

select PRO_ID,DPT_ID,BUILDING_DATE,AVG_FEE from t_team_building a, t_team_building_staff b where a.id = b.TEAM_BUILDING_ID and b.AD_NO = 'v-zhangsan';















