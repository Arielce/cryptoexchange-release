

-- BEGIN generate DDL --

DROP DATABASE IF EXISTS ex;

CREATE DATABASE ex;

DROP USER IF EXISTS ex_rw@'%';

CREATE USER ex_rw@'%' IDENTIFIED BY 'ex_rw_password';

GRANT SELECT,INSERT,DELETE,UPDATE ON ex.* TO ex_rw@'%' WITH GRANT OPTION;

DROP USER IF EXISTS ex_ro@'%';

CREATE USER ex_ro@'%' IDENTIFIED BY 'ex_ro_password';

GRANT SELECT ON ex.* TO ex_ro@'%' WITH GRANT OPTION;

USE ex;

CREATE TABLE order_sequences_7 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_19 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_6 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_18 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_9 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE withdraw_requests (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  withdrawFee DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  errorCode VARCHAR(32) NOT NULL,
  status VARCHAR(50) NOT NULL,
  errorMessage VARCHAR(100) NOT NULL,
  tx VARCHAR(200) NOT NULL,
  encryptedToAddress VARCHAR(1000) NOT NULL,
  INDEX IDX_USER_ID (userId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_17 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_8 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE spot_accounts (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  balance DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  type VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_USERID_CURRENCY_TYPE UNIQUE (userId, currency, type),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_16 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE hd_deposit_addresses (
  id BIGINT AUTO_INCREMENT NOT NULL,
  bipIndex INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  currency VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_IDX_CUR UNIQUE (bipIndex, currency),
  CONSTRAINT UNI_USERID_CUR UNIQUE (userId, currency),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_15 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_14 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_13 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_1 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_0 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_3 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE locks (
  id VARCHAR(32) NOT NULL,
  expiresAt BIGINT NOT NULL,
  owner VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_2 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_5 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_4 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_23 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_22 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_21 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_20 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE ext_order_whitelist (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_USER_SYMBOL UNIQUE (userId, symbol),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE match_details (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  fee DECIMAL(36,18) NOT NULL,
  price DECIMAL(36,18) NOT NULL,
  type VARCHAR(50) NOT NULL,
  INDEX IDX_ORDERID (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE withdraw_addresses (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  currency VARCHAR(32) NOT NULL,
  addressHash VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL,
  encryptedAddress VARCHAR(1000) NOT NULL,
  CONSTRAINT UNI_ADDR_CUR_USERID UNIQUE (addressHash, currency, userId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_29 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_28 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE symbol_fee_rates (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  startTime BIGINT NOT NULL,
  makerFeeRate DECIMAL(36,18) NOT NULL,
  takerFeeRate DECIMAL(36,18) NOT NULL,
  symbol VARCHAR(255) NOT NULL,
  CONSTRAINT UNI_START_SYMBOL UNIQUE (startTime, symbol),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_27 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_26 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE deposit_rules (
  id BIGINT AUTO_INCREMENT NOT NULL,
  confirms INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  INDEX IDX_CURRENCY (currency),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_25 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_24 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE users (
  id BIGINT AUTO_INCREMENT NOT NULL,
  canSignin BOOL NOT NULL,
  canTrade BOOL NOT NULL,
  canWithdraw BOOL NOT NULL,
  internal BOOL NOT NULL,
  level INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  organizationId BIGINT NOT NULL,
  referrerId BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  version BIGINT NOT NULL,
  type VARCHAR(50) NOT NULL,
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE ext_order_fee_refunds (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  refundPercent DOUBLE NOT NULL,
  exchangeRate DECIMAL(36,18) NOT NULL,
  originalFee DECIMAL(36,18) NOT NULL,
  refundedFee DECIMAL(36,18) NOT NULL,
  replacedFee DECIMAL(36,18) NOT NULL,
  originalFeeCurrency VARCHAR(32) NOT NULL,
  replacedFeeCurrency VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE clearing_results (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  type VARCHAR(50) NOT NULL,
  hashStatus VARCHAR(100) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE withdraw_fees (
  id BIGINT AUTO_INCREMENT NOT NULL,
  blockHeight BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  feeAmount DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  feeCurrency VARCHAR(32) NOT NULL,
  blockHash VARCHAR(100) NOT NULL,
  tx VARCHAR(100) NOT NULL,
  uniqueId VARCHAR(200) NOT NULL,
  CONSTRAINT UNI_UNIQUE_ID UNIQUE (uniqueId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE orders (
  id BIGINT AUTO_INCREMENT NOT NULL,
  features INTEGER NOT NULL,
  sequenceIndex INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  previousSeqId BIGINT NOT NULL,
  refOrderId BIGINT NOT NULL,
  refSeqId BIGINT NOT NULL,
  seqId BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  fee DECIMAL(36,18) NOT NULL,
  filledAmount DECIMAL(36,18) NOT NULL,
  makerFeeRate DECIMAL(36,18) NOT NULL,
  price DECIMAL(36,18) NOT NULL,
  takerFeeRate DECIMAL(36,18) NOT NULL,
  triggerOn DECIMAL(36,18) NOT NULL,
  source VARCHAR(32) NOT NULL,
  status VARCHAR(50) NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  type VARCHAR(50) NOT NULL,
  INDEX IDX_USERID_STATUS_SYMBOL (userId, status, symbol),
  INDEX IDX_CREATEDAT (createdAt),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_31 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_30 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE deposit_results (
  id BIGINT AUTO_INCREMENT NOT NULL,
  shouldAudit BOOL NOT NULL,
  cancelled INTEGER NOT NULL,
  confirms INTEGER NOT NULL,
  deposited INTEGER NOT NULL,
  minimumConfirms INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  status VARCHAR(50) NOT NULL,
  uniqueId VARCHAR(200) NOT NULL,
  encryptedToAddress VARCHAR(1000) NOT NULL,
  CONSTRAINT UNI_UNIQUE_ID UNIQUE (uniqueId),
  INDEX IDX_CURRENCY (currency),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE ext_mining_reports (
  id BIGINT AUTO_INCREMENT NOT NULL,
  userId BIGINT NOT NULL,
  feeAmount DECIMAL(36,18) NOT NULL,
  miningAmount DECIMAL(36,18) NOT NULL,
  feeCurrency VARCHAR(32) NOT NULL,
  miningCurrency VARCHAR(32) NOT NULL,
  reportDate VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_DATE_USER_CUR UNIQUE (reportDate, userId, feeCurrency),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE archive_orders (
  id BIGINT NOT NULL,
  features INTEGER NOT NULL,
  sequenceIndex INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  previousSeqId BIGINT NOT NULL,
  refOrderId BIGINT NOT NULL,
  refSeqId BIGINT NOT NULL,
  seqId BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  fee DECIMAL(36,18) NOT NULL,
  filledAmount DECIMAL(36,18) NOT NULL,
  makerFeeRate DECIMAL(36,18) NOT NULL,
  price DECIMAL(36,18) NOT NULL,
  takerFeeRate DECIMAL(36,18) NOT NULL,
  triggerOn DECIMAL(36,18) NOT NULL,
  source VARCHAR(32) NOT NULL,
  status VARCHAR(50) NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  type VARCHAR(50) NOT NULL,
  INDEX IDX_USERID_SYMBOL (userId, symbol),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE spot_account_flows (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  fromAccountId BIGINT NOT NULL,
  fromUserId BIGINT NOT NULL,
  refId BIGINT NOT NULL,
  toAccountId BIGINT NOT NULL,
  toUserId BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  flowType VARCHAR(50) NOT NULL,
  refType VARCHAR(32) NOT NULL,
  description VARCHAR(200) NOT NULL,
  INDEX IDX_CREATEDAT (createdAt),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE clearing_records (
  id BIGINT AUTO_INCREMENT NOT NULL,
  done BOOL NOT NULL,
  createdAt BIGINT NOT NULL,
  fromAccountId BIGINT NOT NULL,
  fromUserId BIGINT NOT NULL,
  makerOrderId BIGINT NOT NULL,
  takerOrderId BIGINT NOT NULL,
  toAccountId BIGINT NOT NULL,
  toUserId BIGINT NOT NULL,
  makerFee DECIMAL(36,18) NULL,
  makerFilledAmount DECIMAL(36,18) NULL,
  takerFee DECIMAL(36,18) NULL,
  takerFilledAmount DECIMAL(36,18) NULL,
  transferAmount DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  makerOrderStatus VARCHAR(50) NULL,
  takerOrderStatus VARCHAR(50) NULL,
  transfer VARCHAR(50) NOT NULL,
  type VARCHAR(50) NOT NULL,
  INDEX IDX_MAKER_ORDER_ID (makerOrderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE symbols (
  id BIGINT AUTO_INCREMENT NOT NULL,
  baseScale INTEGER NOT NULL,
  displayOrder INTEGER NOT NULL,
  quoteScale INTEGER NOT NULL,
  sequenceIndex INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  endTime BIGINT NOT NULL,
  startTime BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  version BIGINT NOT NULL,
  baseMinimum DECIMAL(36,18) NOT NULL,
  quoteMinimum DECIMAL(36,18) NOT NULL,
  baseName VARCHAR(32) NOT NULL,
  quoteName VARCHAR(32) NOT NULL,
  meta VARCHAR(1000) NOT NULL,
  CONSTRAINT UNI_BASE_QUOTE UNIQUE (baseName, quoteName),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE user_fee_rates (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  startTime BIGINT NOT NULL,
  userId BIGINT NULL,
  makerFeeRate DECIMAL(36,18) NOT NULL,
  takerFeeRate DECIMAL(36,18) NOT NULL,
  CONSTRAINT UNI_START_USERID UNIQUE (startTime, userId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE level_fee_rates (
  id BIGINT AUTO_INCREMENT NOT NULL,
  level INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  startTime BIGINT NOT NULL,
  makerFeeRate DECIMAL(36,18) NOT NULL,
  takerFeeRate DECIMAL(36,18) NOT NULL,
  CONSTRAINT UNI_START_LEVEL UNIQUE (startTime, level),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE withdraw_rules (
  id BIGINT AUTO_INCREMENT NOT NULL,
  withdrawDisabled BOOL NOT NULL,
  createdAt BIGINT NOT NULL,
  feeRate DECIMAL(36,18) NOT NULL,
  maximumFee DECIMAL(36,18) NOT NULL,
  minimumAmount DECIMAL(36,18) NOT NULL,
  minimumFee DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_CURRENCY UNIQUE (currency),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE api_key_auths (
  id BIGINT AUTO_INCREMENT NOT NULL,
  canTrade BOOL NOT NULL,
  canWithdraw BOOL NOT NULL,
  enabled BOOL NOT NULL,
  netAddress INTEGER NOT NULL,
  netmask INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  updatedAt BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  version BIGINT NOT NULL,
  apiKey VARCHAR(32) NOT NULL,
  apiSecret VARCHAR(32) NOT NULL,
  description VARCHAR(100) NOT NULL,
  CONSTRAINT UNI_API_KEY UNIQUE (apiKey),
  INDEX IDX_USERID (userId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE fee_reports (
  id BIGINT AUTO_INCREMENT NOT NULL,
  collected BOOL NOT NULL,
  divided BOOL NOT NULL,
  createdAt BIGINT NOT NULL,
  feeAmount DECIMAL(36,18) NOT NULL,
  feeCurrency VARCHAR(32) NOT NULL,
  reportDate VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_DATE_CUR UNIQUE (reportDate, feeCurrency),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE ticks (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  makerOrderId BIGINT NOT NULL,
  takerOrderId BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  price DECIMAL(36,18) NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_CREATED_TAKER_MAKER UNIQUE (createdAt, takerOrderId, makerOrderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE match_message_store (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  hashStatus VARCHAR(32) NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  message TEXT NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE bars (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  startTime BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  closePrice DECIMAL(36,18) NOT NULL,
  highPrice DECIMAL(36,18) NOT NULL,
  lowPrice DECIMAL(36,18) NOT NULL,
  openPrice DECIMAL(36,18) NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  type VARCHAR(50) NOT NULL,
  CONSTRAINT UNI_START_TYPE_SYMBOL UNIQUE (startTime, type, symbol),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE ext_mining_results (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  userId BIGINT NOT NULL,
  exchangeRate DECIMAL(36,18) NOT NULL,
  feeAmount DECIMAL(36,18) NOT NULL,
  miningAmount DECIMAL(36,18) NOT NULL,
  miningPercent DECIMAL(36,18) NOT NULL,
  feeCurrency VARCHAR(32) NOT NULL,
  miningCurrency VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE unreplays (
  id BIGINT AUTO_INCREMENT NOT NULL,
  createdAt BIGINT NOT NULL,
  uniqueId VARCHAR(50) NOT NULL,
  CONSTRAINT UNI_UNIQUE_ID UNIQUE (uniqueId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_12 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_11 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE order_sequences_10 (
  id BIGINT NOT NULL,
  createdAt BIGINT NOT NULL,
  orderId BIGINT NOT NULL,
  previousId BIGINT NOT NULL,
  symbol VARCHAR(32) NOT NULL,
  CONSTRAINT UNI_ORDER_ID UNIQUE (orderId),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE transfer_requests (
  id BIGINT AUTO_INCREMENT NOT NULL,
  done BOOL NOT NULL,
  createdAt BIGINT NOT NULL,
  fromAccountId BIGINT NOT NULL,
  fromUserId BIGINT NOT NULL,
  refId BIGINT NOT NULL,
  toAccountId BIGINT NOT NULL,
  toUserId BIGINT NOT NULL,
  amount DECIMAL(36,18) NOT NULL,
  currency VARCHAR(32) NOT NULL,
  flowType VARCHAR(50) NOT NULL,
  refType VARCHAR(32) NOT NULL,
  description VARCHAR(200) NOT NULL,
  INDEX IDX_CREATEDAT (createdAt),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;


CREATE TABLE currencies (
  id BIGINT AUTO_INCREMENT NOT NULL,
  legal BOOL NOT NULL,
  token BOOL NOT NULL,
  tokenDecimals INTEGER NOT NULL,
  createdAt BIGINT NOT NULL,
  addressAliasTo VARCHAR(32) NOT NULL,
  name VARCHAR(32) NOT NULL,
  tokenIssuesOn VARCHAR(32) NOT NULL,
  tokenContractAddress VARCHAR(100) NOT NULL,
  encryptedXpubKey VARCHAR(1000) NOT NULL,
  meta VARCHAR(1000) NOT NULL,
  CONSTRAINT UNI_NAME UNIQUE (name),
  PRIMARY KEY(id)
) Engine=INNODB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;

-- END generate DDL --
