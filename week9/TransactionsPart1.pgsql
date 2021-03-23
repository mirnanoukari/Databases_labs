	--Transactions
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
    SET credit = credit + 700
    WHERE account_id = 100;

	SAVEPOINT T2;
    UPDATE account
    SET credit = credit - 100
    WHERE account_id = 200;

    UPDATE account
    SET credit = credit + 100
    WHERE account_id = 300;
	
	COMMIT;
	SELECT * FROM account;
	
	--ROLLBACK