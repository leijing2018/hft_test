-- Add/modify columns 
alter table AGENT_INFO add legal_cell_area VARCHAR2(10);
-- Add comments to the columns 
comment on column AGENT_INFO.legal_cell_area
  is '手机号国际区号';

-- Add/modify columns 
alter table MERS_RISK_LEVEL_DEF add id  VARCHAR2(32) not null;
-- Add comments to the columns 
comment on column MERS_RISK_LEVEL_DEF.id
  is '系统唯一id';

alter table MERS_RISK_LEVEL_DEF
  add constraint PK_MERS_RISK_LEVEL_DEF_ID unique (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
