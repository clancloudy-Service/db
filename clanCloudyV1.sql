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
    zone bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL
);


ALTER TABLE public."Account" OWNER TO postgres;

--
-- Name: AccountProduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AccountProduct" (
    id bigint NOT NULL,
    name text NOT NULL,
    account bigint,
    product bigint,
    modifieddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby text NOT NULL,
    createdby text NOT NULL,
    tax bigint
);


ALTER TABLE public."AccountProduct" OWNER TO postgres;

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
    product bigint
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
-- Name: AccountProduct AccountProduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountProduct"
    ADD CONSTRAINT "AccountProduct_pkey" PRIMARY KEY (id);


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
-- Name: AccountProduct account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountProduct"
    ADD CONSTRAINT account FOREIGN KEY (account) REFERENCES public."Account"(id);


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
-- Name: AccountProduct product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountProduct"
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
-- Name: AccountProduct tax; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountProduct"
    ADD CONSTRAINT tax FOREIGN KEY (tax) REFERENCES public."Tax"(id);


--
-- Name: Account zone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT zone FOREIGN KEY (zone) REFERENCES public."Zone"(id);


--
-- Name: Tax zone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tax"
    ADD CONSTRAINT zone FOREIGN KEY (zone) REFERENCES public."Zone"(id);


--
-- PostgreSQL database dump complete
--

