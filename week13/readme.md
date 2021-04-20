# Lab 12 Submission

## Exercise 1

#### Table 1

```
127.0.0.1:12000> select 1 
OK
127.0.0.1:12000[1]> MULTI
OK
127.0.0.1:12000[1](TX)> HMSET Customers:001 first_name Jane last_name Doe
QUEUED
127.0.0.1:12000[1](TX)> HMSET Customers:002 first_name Jone last_name Doe
QUEUED
127.0.0.1:12000[1](TX)> HMSET Customers:003 first_name Jane last_name Smith
QUEUED
127.0.0.1:12000[1](TX)> HMSET Customers:004 first_name Jone last_name Smith
QUEUED
127.0.0.1:12000[1](TX)> HMSET Customers:005 first_name Jane last_name Jones
QUEUED
127.0.0.1:12000[1](TX)> HMSET Customers:006 first_name John last_name Jones
QUEUED
```



#### Table 2

```
127.0.0.1:12000[1]> select 2
OK
127.0.0.1:12000[2]> MULTI
OK
127.0.0.1:12000[2](TX)> HMSET Orders:1001 customer_numb 002 order_date 10/10/09 order_total 250.85
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1002 customer_numb 002 order_date 2/21/10 order_total 125.89
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1003 customer_numb 003 order_date 11/15/09 order_total 1567.99
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1004 customer_numb 004 order_date 11/22/09 order_total 180.92
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1005 customer_numb 004 order_date 12/15/09 order_total 565.00
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1006 customer_numb 006 order_date 11/22/09 order_total 25.00
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1007 customer_numb 006 order_date 10/08/09 order_total 85.00
QUEUED
127.0.0.1:12000[2](TX)> HMSET Orders:1008 customer_numb 006 order_date 12/29/09 order_total 109.12
QUEUED
127.0.0.1:12000[2](TX)> EXEC
1) OK
2) OK
3) OK
4) OK
5) OK
6) OK
7) OK
8) OK
```





