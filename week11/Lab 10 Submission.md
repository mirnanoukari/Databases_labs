# Lab 10 Submission

## Task 1

#### Step 1

##### Terminal 1

Run the following query:

```sql
BEGIN;
set transaction isolation level read uncommitted;
select * from account;
```

The output we get:

![](/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-13-26.jpg)

#### Step 2

##### Terminal 2

Running the following:

```sql
BEGIN;
set transaction isolation level read uncommitted;
update account set username = 'ajones' where fullname='Alice Jones';
```

#### Step 3

##### Terminal 1

```sql
select * from account;
```

We get:

![](/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-21-15.jpg)

#### Step 4

##### Terminal 2

```sql
select * from account;
```

We get:

![photo_2021-04-06_15-29-53](/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-29-53.jpg)



The outputs are different due to the reason that changes have not been committed  in terminal 2.

#### Step 5

##### Terminal 2

```sql
commit;
```

Terminal 1 output after committing:

<img src="/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-34-52.jpg" alt="photo_2021-04-06_15-34-52" style="zoom: 33%;" />

Terminal 2 output after committing:

![photo_2021-04-06_15-35-33](/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-35-33.jpg)

#### Step 6

##### Terminal 2

```sql
end;
begin;
```

#### Step 7

##### Terminal 1

```sql
update account 
set balance = balance + 10 
where fullname ='Alice Jones'
```

Output:

![photo_2021-04-06_15-41-34](/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-41-34.jpg)

The changes need to be committed before running the next step, otherwise we will have execution error.

#### Step 8

##### Terminal 2

After committing the changes in Terminal 1 we can run the following:

```sql
update account 
set balance = balance + 20 
where fullname='Alice Jones'
```

Output:

![photo_2021-04-06_15-42-22](/home/mirna/Downloads/Telegram Desktop/photo_2021-04-06_15-42-22.jpg)



#### Step 9

##### Terminal 1

```sql
commit;
```

#### Step 10

##### Terminal 2

```sql
ROLLBACK;
```

