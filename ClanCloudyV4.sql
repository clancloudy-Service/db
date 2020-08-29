--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: account_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_category (
    id bigint NOT NULL,
    name text,
    account bigint,
    business_category bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.account_category OWNER TO postgres;

--
-- Name: account_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_seq OWNER TO postgres;

--
-- Name: branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch (
    id bigint NOT NULL,
    name text,
    branch_name text NOT NULL,
    account bigint,
    zone bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.branch OWNER TO postgres;

--
-- Name: branch_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch_category (
    id bigint NOT NULL,
    name text,
    branch bigint,
    business_category bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.branch_category OWNER TO postgres;

--
-- Name: business_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.business_category (
    id bigint NOT NULL,
    name text,
    type text,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.business_category OWNER TO postgres;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    account bigint NOT NULL
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    request bigint NOT NULL
);


ALTER TABLE public.invoice OWNER TO postgres;

--
-- Name: pli_category_junction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pli_category_junction (
    id bigint NOT NULL,
    name text,
    product_line_item bigint,
    product_category bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.pli_category_junction OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_category (
    id bigint NOT NULL,
    name text,
    type text,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.product_category OWNER TO postgres;

--
-- Name: product_category_junction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_category_junction (
    id bigint NOT NULL,
    name text,
    product bigint,
    product_category bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.product_category_junction OWNER TO postgres;

--
-- Name: product_line_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_line_item (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    product bigint,
    branch bigint NOT NULL
);


ALTER TABLE public.product_line_item OWNER TO postgres;

--
-- Name: request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    "Service" bigint NOT NULL
);


ALTER TABLE public.request OWNER TO postgres;

--
-- Name: request_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request_item (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    request bigint NOT NULL
);


ALTER TABLE public.request_item OWNER TO postgres;

--
-- Name: service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    "serviceSetting" bigint,
    "serviceDefination" bigint
);


ALTER TABLE public.service OWNER TO postgres;

--
-- Name: service_defination; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_defination (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.service_defination OWNER TO postgres;

--
-- Name: service_setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_setting (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.service_setting OWNER TO postgres;

--
-- Name: tax; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    zone bigint
);


ALTER TABLE public.tax OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    account bigint NOT NULL,
    contact bigint NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: zone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zone (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public.zone OWNER TO postgres;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
1	BAAPGI	2020-08-29 20:44:54.743004	2020-08-29 20:44:54.743004	admin	admin
\.


--
-- Data for Name: account_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_category (id, name, account, business_category, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch (id, name, branch_name, account, zone, modifieddate, createddate, modifiedby, createdby) FROM stdin;
1	BAAPGI	BAAPGI Kalyan	1	1	2020-08-29 20:45:18.689275	2020-08-29 20:45:18.689275	admin	admin
2	BAAPGI2	BAAPGI Kalyan2	1	1	2020-08-29 21:18:05.791303	2020-08-29 21:18:05.791303	admin	admin
3	BAAPGI3	BAAPGI Kalyan3	1	1	2020-08-29 21:18:05.791303	2020-08-29 21:18:05.791303	admin	admin
\.


--
-- Data for Name: branch_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch_category (id, name, branch, business_category, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: business_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.business_category (id, name, type, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (id, name, modifieddate, createddate, modifiedby, createdby, account) FROM stdin;
\.


--
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice (id, name, modifieddate, createddate, modifiedby, createdby, request) FROM stdin;
\.


--
-- Data for Name: pli_category_junction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pli_category_junction (id, name, product_line_item, product_category, modifieddate, createddate, modifiedby, createdby) FROM stdin;
1	PliCJ1	1	1	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
2	PliCJ2	2	2	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
3	PliCJ3	2	3	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
4	PliCJ4	3	3	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
5	PliCJ5	3	2	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
6	PliCJ6	4	1	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
7	PliCJ7	5	3	2020-08-29 21:36:40.825095	2020-08-29 21:36:40.825095	admin	admin
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
1	P1	2020-08-29 20:45:41.610131	2020-08-29 20:45:41.610131	admin	admin
2	P2	2020-08-29 21:18:36.249461	2020-08-29 21:18:36.249461	admin	admin
3	P3	2020-08-29 21:18:36.249461	2020-08-29 21:18:36.249461	admin	admin
\.


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_category (id, name, type, modifieddate, createddate, modifiedby, createdby) FROM stdin;
1	PC1	\N	2020-08-29 20:46:26.869292	2020-08-29 20:46:26.869292	admin	admin
2	PC2	veg	2020-08-29 21:15:40.806983	2020-08-29 21:15:40.806983	admin	admin
3	PC2	Non-veg	2020-08-29 21:15:40.806983	2020-08-29 21:15:40.806983	admin	admin
\.


--
-- Data for Name: product_category_junction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_category_junction (id, name, product, product_category, modifieddate, createddate, modifiedby, createdby) FROM stdin;
1	PCJ1	1	1	2020-08-29 20:46:33.683274	2020-08-29 20:46:33.683274	admin	admin
1	PCJ1	1	1	2020-08-29 21:24:56.225588	2020-08-29 21:24:56.225588	admin	admin
2	PCJ1	2	2	2020-08-29 21:26:36.680791	2020-08-29 21:26:36.680791	admin	admin
2	PCJ1	2	3	2020-08-29 21:26:36.680791	2020-08-29 21:26:36.680791	admin	admin
3	PCJ1	1	2	2020-08-29 21:26:36.680791	2020-08-29 21:26:36.680791	admin	admin
\.


--
-- Data for Name: product_line_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_line_item (id, name, modifieddate, createddate, modifiedby, createdby, product, branch) FROM stdin;
1	Cheez Swarma	2020-08-29 20:46:38.156274	2020-08-29 20:46:38.156274	admin	admin	1	1
3	Cheez Swarma	2020-08-29 21:19:22.510346	2020-08-29 21:19:22.510346	admin	admin	2	1
4	Cheez Swarma	2020-08-29 21:19:22.510346	2020-08-29 21:19:22.510346	admin	admin	3	1
5	Cheez Swarma	2020-08-29 21:19:22.510346	2020-08-29 21:19:22.510346	admin	admin	1	1
2	PLI2	2020-08-29 21:32:55.131599	2020-08-29 21:32:55.131599	admin	admin	2	1
\.


--
-- Data for Name: request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request (id, name, modifieddate, createddate, modifiedby, createdby, "Service") FROM stdin;
\.


--
-- Data for Name: request_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request_item (id, name, modifieddate, createddate, modifiedby, createdby, request) FROM stdin;
\.


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service (id, name, modifieddate, createddate, modifiedby, createdby, "serviceSetting", "serviceDefination") FROM stdin;
\.


--
-- Data for Name: service_defination; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_defination (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: service_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_setting (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: tax; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax (id, name, modifieddate, createddate, modifiedby, createdby, zone) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, name, modifieddate, createddate, modifiedby, createdby, account, contact) FROM stdin;
\.


--
-- Data for Name: zone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zone (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Name: account_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_seq', 1, false);


--
-- Name: account Account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (id);


--
-- Name: contact Contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT "Contact_pkey" PRIMARY KEY (id);


--
-- Name: invoice Invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT "Invoice_pkey" PRIMARY KEY (id);


--
-- Name: product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- Name: service_defination ServiceDefination_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_defination
    ADD CONSTRAINT "ServiceDefination_pkey" PRIMARY KEY (id);


--
-- Name: service_setting ServiceSetting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_setting
    ADD CONSTRAINT "ServiceSetting_pkey" PRIMARY KEY (id);


--
-- Name: service Service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT "Service_pkey" PRIMARY KEY (id);


--
-- Name: tax Tax_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax
    ADD CONSTRAINT "Tax_pkey" PRIMARY KEY (id);


--
-- Name: user User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: zone Zone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zone
    ADD CONSTRAINT "Zone_pkey" PRIMARY KEY (id);


--
-- Name: product_line_item product_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_line_item
    ADD CONSTRAINT product_line_item_pkey PRIMARY KEY (id);


--
-- Name: product_category productcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT productcategory_pkey PRIMARY KEY (id);


--
-- Name: request_item requestItem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_item
    ADD CONSTRAINT "requestItem_pkey" PRIMARY KEY (id);


--
-- Name: request request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_pkey PRIMARY KEY (id);


--
-- Name: request Service; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT "Service" FOREIGN KEY ("Service") REFERENCES public.service(id);


--
-- Name: contact account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT account FOREIGN KEY (account) REFERENCES public.account(id);


--
-- Name: user account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT account FOREIGN KEY (account) REFERENCES public.account(id);


--
-- Name: user contact; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT contact FOREIGN KEY (contact) REFERENCES public.contact(id);


--
-- Name: pli_category_junction fk6c4aiinm99a7o6gjw1mugt5dk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pli_category_junction
    ADD CONSTRAINT fk6c4aiinm99a7o6gjw1mugt5dk FOREIGN KEY (product_line_item) REFERENCES public.product_line_item(id);


--
-- Name: product_category_junction pcFkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category_junction
    ADD CONSTRAINT "pcFkey" FOREIGN KEY (product_category) REFERENCES public.product_category(id);


--
-- Name: pli_category_junction pcFkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pli_category_junction
    ADD CONSTRAINT "pcFkey" FOREIGN KEY (product_category) REFERENCES public.product_category(id);


--
-- Name: pli_category_junction pliFkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pli_category_junction
    ADD CONSTRAINT "pliFkey" FOREIGN KEY (product_line_item) REFERENCES public.product_line_item(id);


--
-- Name: product_line_item product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_line_item
    ADD CONSTRAINT product FOREIGN KEY (product) REFERENCES public.product(id);


--
-- Name: invoice request; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT request FOREIGN KEY (request) REFERENCES public.request(id);


--
-- Name: request_item request; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_item
    ADD CONSTRAINT request FOREIGN KEY (request) REFERENCES public.request(id);


--
-- Name: service serviceDefination; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT "serviceDefination" FOREIGN KEY ("serviceDefination") REFERENCES public.service_defination(id);


--
-- Name: service serviceSetting; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT "serviceSetting" FOREIGN KEY ("serviceSetting") REFERENCES public.service_setting(id);


--
-- Name: tax zone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax
    ADD CONSTRAINT zone FOREIGN KEY (zone) REFERENCES public.zone(id);


--
-- PostgreSQL database dump complete
--

