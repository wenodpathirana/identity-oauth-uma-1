CREATE TABLE IDN_UMA_RESOURCE (
  ID                  INTEGER   AUTO_INCREMENT NOT NULL,
  RESOURCE_ID         VARCHAR(255),
  RESOURCE_NAME       VARCHAR(255),
  TIME_CREATED        TIMESTAMP  NOT NULL,
  RESOURCE_OWNER_NAME  VARCHAR(255),
  TENANT_ID          INTEGER ,
  CLIENT_ID         VARCHAR(255),
  USER_DOMAIN       VARCHAR(255),
  PRIMARY KEY (ID)
);

CREATE TABLE IDN_UMA_RESOURCE_SCOPE
(
  ID INTEGER AUTO_INCREMENT NOT NULL,
  RESOURCE_IDENTITY INTEGER,
  SCOPE_NAME VARCHAR(255),
  PRIMARY KEY (ID),
  CONSTRAINT FK_IDN_UMA_RESOURCE FOREIGN KEY (RESOURCE_IDENTITY) REFERENCES IDN_UMA_RESOURCE (ID)
);

CREATE TABLE IDN_UMA_RESOURCE_META_DATA (
  ID                INTEGER AUTO_INCREMENT NOT NULL,
  RESOURCE_IDENTITY       INTEGER,
  PROPERTY_KEY      VARCHAR(255),
  PROPERTY_VALUE    VARCHAR(255),
  PRIMARY KEY (ID),
  CONSTRAINT FK_RESOURCE_META_DATA FOREIGN KEY (RESOURCE_IDENTITY) REFERENCES IDN_UMA_RESOURCE (ID)
  ON DELETE CASCADE
);




