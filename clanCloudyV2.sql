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
-- Name: Account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Account" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public."Account" OWNER TO postgres;

--
-- Name: Contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Contact" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    account bigint NOT NULL
);


ALTER TABLE public."Contact" OWNER TO postgres;

--
-- Name: Invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Invoice" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    request bigint NOT NULL
);


ALTER TABLE public."Invoice" OWNER TO postgres;

--
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- Name: ProductLineItem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProductLineItem" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    product bigint,
    branch bigint NOT NULL
);


ALTER TABLE public."ProductLineItem" OWNER TO postgres;

--
-- Name: Request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Request" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    "Service" bigint NOT NULL
);


ALTER TABLE public."Request" OWNER TO postgres;

--
-- Name: RequestItem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RequestItem" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    request bigint NOT NULL
);


ALTER TABLE public."RequestItem" OWNER TO postgres;

--
-- Name: Service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Service" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    "serviceSetting" bigint,
    "serviceDefination" bigint
);


ALTER TABLE public."Service" OWNER TO postgres;

--
-- Name: ServiceDefination; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ServiceDefination" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public."ServiceDefination" OWNER TO postgres;

--
-- Name: ServiceSetting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ServiceSetting" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public."ServiceSetting" OWNER TO postgres;

--
-- Name: Tax; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tax" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    zone bigint
);


ALTER TABLE public."Tax" OWNER TO postgres;

--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    account bigint NOT NULL,
    contact bigint NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: Zone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Zone" (
    id bigint NOT NULL,
    name text NOT NULL,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public."Zone" OWNER TO postgres;

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
-- Data for Name: Account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Account" (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: Contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Contact" (id, name, modifieddate, createddate, modifiedby, createdby, account) FROM stdin;
\.


--
-- Data for Name: Invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Invoice" (id, name, modifieddate, createddate, modifiedby, createdby, request) FROM stdin;
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product" (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: ProductLineItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProductLineItem" (id, name, modifieddate, createddate, modifiedby, createdby, product, branch) FROM stdin;
\.


--
-- Data for Name: Request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Request" (id, name, modifieddate, createddate, modifiedby, createdby, "Service") FROM stdin;
\.


--
-- Data for Name: RequestItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RequestItem" (id, name, modifieddate, createddate, modifiedby, createdby, request) FROM stdin;
\.


--
-- Data for Name: Service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Service" (id, name, modifieddate, createddate, modifiedby, createdby, "serviceSetting", "serviceDefination") FROM stdin;
\.


--
-- Data for Name: ServiceDefination; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ServiceDefination" (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: ServiceSetting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ServiceSetting" (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: Tax; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tax" (id, name, modifieddate, createddate, modifiedby, createdby, zone) FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, name, modifieddate, createddate, modifiedby, createdby, account, contact) FROM stdin;
\.


--
-- Data for Name: Zone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Zone" (id, name, modifieddate, createddate, modifiedby, createdby) FROM stdin;
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
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_category (id, name, type, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Data for Name: product_category_junction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_category_junction (id, name, product, product_category, modifieddate, createddate, modifiedby, createdby) FROM stdin;
\.


--
-- Name: Account Account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (id);


--
-- Name: Contact Contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Contact"
    ADD CONSTRAINT "Contact_pkey" PRIMARY KEY (id);


--
-- Name: Invoice Invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Invoice"
    ADD CONSTRAINT "Invoice_pkey" PRIMARY KEY (id);


--
-- Name: ProductLineItem ProductLineItem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductLineItem"
    ADD CONSTRAINT "ProductLineItem_pkey" PRIMARY KEY (id);


--
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- Name: RequestItem RequestItem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestItem"
    ADD CONSTRAINT "RequestItem_pkey" PRIMARY KEY (id);


--
-- Name: Request Request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Request"
    ADD CONSTRAINT "Request_pkey" PRIMARY KEY (id);


--
-- Name: ServiceDefination ServiceDefination_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ServiceDefination"
    ADD CONSTRAINT "ServiceDefination_pkey" PRIMARY KEY (id);


--
-- Name: ServiceSetting ServiceSetting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ServiceSetting"
    ADD CONSTRAINT "ServiceSetting_pkey" PRIMARY KEY (id);


--
-- Name: Service Service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Service"
    ADD CONSTRAINT "Service_pkey" PRIMARY KEY (id);


--
-- Name: Tax Tax_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tax"
    ADD CONSTRAINT "Tax_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: Zone Zone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Zone"
    ADD CONSTRAINT "Zone_pkey" PRIMARY KEY (id);


--
-- Name: Request Service; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Request"
    ADD CONSTRAINT "Service" FOREIGN KEY ("Service") REFERENCES public."Service"(id);


--
-- Name: Contact account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Contact"
    ADD CONSTRAINT account FOREIGN KEY (account) REFERENCES public."Account"(id);


--
-- Name: User account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT account FOREIGN KEY (account) REFERENCES public."Account"(id);


--
-- Name: User contact; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT contact FOREIGN KEY (contact) REFERENCES public."Contact"(id);


--
-- Name: ProductLineItem product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductLineItem"
    ADD CONSTRAINT product FOREIGN KEY (product) REFERENCES public."Product"(id);


--
-- Name: Invoice request; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Invoice"
    ADD CONSTRAINT request FOREIGN KEY (request) REFERENCES public."Request"(id);


--
-- Name: RequestItem request; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestItem"
    ADD CONSTRAINT request FOREIGN KEY (request) REFERENCES public."Request"(id);


--
-- Name: Service serviceDefination; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Service"
    ADD CONSTRAINT "serviceDefination" FOREIGN KEY ("serviceDefination") REFERENCES public."ServiceDefination"(id);


--
-- Name: Service serviceSetting; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Service"
    ADD CONSTRAINT "serviceSetting" FOREIGN KEY ("serviceSetting") REFERENCES public."ServiceSetting"(id);


--
-- Name: Tax zone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tax"
    ADD CONSTRAINT zone FOREIGN KEY (zone) REFERENCES public."Zone"(id);


--
-- PostgreSQL database dump complete
--

