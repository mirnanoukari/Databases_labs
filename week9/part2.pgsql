--Transaction block
BEGIN;
SAVEPOINT T1;
UPDATE account
SET credit = credit - 500
WHERE account_id = 100;

UPDATE account
SET credit = credit + 500
WHERE account_id = 300;

SAVEPOINT T2;
UPDATE account
SET credit = credit - 700
WHERE account_id = 200;

UPDATE account
SET credit = credit + 670
WHERE account_id = 100;

UPDATE account
SET credit = credit + 30
WHERE account_id = 400;

SAVEPOINT T3;
UPDATE account
SET credit = credit - 100
WHERE account_id = 200;

UPDATE account
SET credit = credit + 70
WHERE account_id = 300;
UPDATE account
SET credit = credit + 30
WHERE account_id = 400;

COMMIT;
SELECT * FROM account;
--ROLLBACK TO SAVEPOINT T2;
