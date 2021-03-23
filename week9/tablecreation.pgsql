-- Table: public.account

-- DROP TABLE public.account;

CREATE TABLE public.account
(
    account_id integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    credit integer NOT NULL,
    CONSTRAINT account_pkey PRIMARY KEY (account_id)
)

TABLESPACE pg_default;

ALTER TABLE public.account
    OWNER to postgres;


-- Column: public.account."BankName"

-- ALTER TABLE public.account DROP COLUMN "BankName";

ALTER TABLE public.account
    ADD COLUMN "BankName" character varying COLLATE pg_catalog."default";