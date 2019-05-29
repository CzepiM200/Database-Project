CREATE TABLE EMPLOYEES (
ID_EMPLOYEE NUMBER NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(32) NOT NULL,
LAST_NAME VARCHAR(32) NOT NULL,
JOB_NAME VARCHAR(64) NOT NULL,
SALARY NUMBER NOT NULL,
EDUCATION VARCHAR(64) NOT NULL,
ID_MAGAGER NUMBER NULL,
GENDER VARCHAR(16) NULL CHECK(GENDER IN('M','F'))
);

CREATE TABLE CLIENTS (
ID_CLIENT NUMBER NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(32) NOT NULL,
LAST_NAME VARCHAR(32) NOT NULL,
ADDRESS VARCHAR(64) NULL,
PHONE_NUMBER CHAR(9) NULL,
BIRTH_DATE DATE NOT NULL,
GENDER VARCHAR(16) NULL CHECK(GENDER IN('M','F'))
);

CREATE TABLE AUTHORIZATIONS (
ID_AUTHORIZATION NUMBER NOT NULL PRIMARY KEY,
AUTOMAT_NAME VARCHAR(32) NOT NULL,
BONUS NUMBER NULL
);

CREATE TABLE EMPLOYEES_AUTHORIZATIONS (
ID_AUTHORIZATION NUMBER NOT NULL PRIMARY KEY,
ID_EMPLOYEE NUMBER NOT NULL
);

CREATE TABLE TOKENS (
ID_TOKEN NUMBER NOT NULL PRIMARY KEY,
TOKEN_VALUE NUMBER NOT NULL,
COLOR VARCHAR(16) NOT NULL,
AMOUNT NUMBER NOT NULL
);

CREATE TABLE GAMES (
ID_GAME NUMBER NOT NULL PRIMARY KEY,
ID_AUTHORIZATION NUMBER NULL,
GAME_NAME VARCHAR(32) NOT NULL,
FLOOR_NUMBER NUMBER(8) NOT NULL,
MAX_PLAYERS_NUMBER NUMBER(16) NOT NULL, 
MIN_PLAYERS_NUMBER NUMBER(16) NOT NULL
);

CREATE TABLE AUTOMATS (
ID_AUTOMAT NUMBER NOT NULL PRIMARY KEY,
AUTOMAT_TYPE VARCHAR(32) NOT NULL,
ID_AUTHORIZATION NUMBER NULL,
CHANCE_TO_WIN FLOAT NOT NULL,
AUTOMAT_CAPACITY NUMBER NOT NULL
);

CREATE TABLE BARS (
ID_BAR NUMBER NOT NULL PRIMARY KEY,
ID_EMPLOYEE NUMBER NOT NULL,
FLOOR_NUMBER NUMBER(8) NOT NULL
);

CREATE TABLE BART_RANSACTIONS (
ID_BAR_TRANSACTION NUMBER NOT NULL PRIMARY KEY,
ID_CLIENT NUMBER NOT NULL,
ID_BAR NUMBER NOT NULL,
PRICE NUMBER NOT NULL,
TRANSACTION_DATE TIMESTAMP(6) NULL
);

CREATE TABLE TOKEN_TRANSACTIONS (
ID_TOKEN_TRANSACTION NUMBER NOT NULL PRIMARY KEY,
ID_CLIENT NUMBER NOT NULL,
ID_EMPLOYEE NUMBER NOT NULL,
PRICE NUMBER NOT NULL,
TRANSACTION_DATE TIMESTAMP(6) NULL
);