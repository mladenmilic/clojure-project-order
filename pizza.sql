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
-- Name: account; Type: TABLE; Schema: public; Owner: Mladen Milic
--

CREATE TABLE public.account (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);


ALTER TABLE public.account OWNER TO "Mladen Milic";

--
-- Name: account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: Mladen Milic
--

CREATE SEQUENCE public.account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_id_seq OWNER TO "Mladen Milic";

--
-- Name: account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Mladen Milic
--

ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account.user_id;


--
-- Name: listorder; Type: TABLE; Schema: public; Owner: Mladen Milic
--

CREATE TABLE public.listorder (
    id integer NOT NULL,
    street character varying(255) NOT NULL,
    municipality character varying(255) NOT NULL,
    mobile character varying(255) NOT NULL,
    totla character varying(255) NOT NULL,
    date character varying(255) NOT NULL,
    description character varying(255)
);


ALTER TABLE public.listorder OWNER TO "Mladen Milic";

--
-- Name: listorder_id_seq; Type: SEQUENCE; Schema: public; Owner: Mladen Milic
--

CREATE SEQUENCE public.listorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listorder_id_seq OWNER TO "Mladen Milic";

--
-- Name: listorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Mladen Milic
--

ALTER SEQUENCE public.listorder_id_seq OWNED BY public.listorder.id;


--
-- Name: account user_id; Type: DEFAULT; Schema: public; Owner: Mladen Milic
--

ALTER TABLE ONLY public.account ALTER COLUMN user_id SET DEFAULT nextval('public.account_user_id_seq'::regclass);


--
-- Name: listorder id; Type: DEFAULT; Schema: public; Owner: Mladen Milic
--

ALTER TABLE ONLY public.listorder ALTER COLUMN id SET DEFAULT nextval('public.listorder_id_seq'::regclass);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: Mladen Milic
--

COPY public.account (user_id, username, password) FROM stdin;
1	pera	pera
\.


--
-- Data for Name: listorder; Type: TABLE DATA; Schema: public; Owner: Mladen Milic
--

COPY public.listorder (id, street, municipality, mobile, totla, date, description) FROM stdin;
7	Tosin Bunar 151	Novi Beograd	066419527	1200	05/07/2020	Capricossa 400 x1  Serbia 450 x1  Margarita 350 x1  
8	Ljeromtova 18	Vozdovac	066485879	350	05/30/2020	Margarita 350 x1  
9	Obilicev venac 63	Stari grad	06412345	1200	06/02/2020	Capricossa 400 x1  Serbia 450 x1  Margarita 350 x1  
10	Jove Ilica 124	Vozdovac	064123456	850	06/01/2020	Capricossa 400 x1  Serbia 450 x1  
11	Vojvode Stepe 122	Vozdovac	06512351	1200	07/03/2020	Capricossa 400 x1  Capricossa 400 x2  
12	Dimitrija Tucovica 12	Zvezdara	06921411	850	07/11/2020	Capricossa 400 x1  Serbia 450 x1  
13	Batutova 11	Zvezdara	064125121	850	07/02/2020	Capricossa 400 x1  Serbia 450 x1  
14	Kraljice Marije 111	Stari grad	06326235	850	06/30/2020	Capricossa 400 x1  Serbia 450 x1  
15	Milutina Milankovica 19a	Novi Beograd	063125121	750	07/02/2020	Capricossa 400 x1  Margarita 350 x1  
16	Otona zupancica 7	Novi Beograd	0652324712	350	06/30/2020	Margarita 350 x1  
\.


--
-- Name: account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Mladen Milic
--

SELECT pg_catalog.setval('public.account_user_id_seq', 1, true);


--
-- Name: listorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Mladen Milic
--

SELECT pg_catalog.setval('public.listorder_id_seq', 16, true);


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: Mladen Milic
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (user_id);


--
-- Name: account account_username_key; Type: CONSTRAINT; Schema: public; Owner: Mladen Milic
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_username_key UNIQUE (username);


--
-- Name: listorder listorder_pkey; Type: CONSTRAINT; Schema: public; Owner: Mladen Milic
--

ALTER TABLE ONLY public.listorder
    ADD CONSTRAINT listorder_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

