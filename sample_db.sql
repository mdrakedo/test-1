--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: friends_favorites; Type: TABLE; Schema: public; Owner: mark
--

CREATE TABLE public.friends_favorites (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    favorite_color character varying(30) NOT NULL,
    lucky_number integer NOT NULL,
    favorite_quote character varying(300) NOT NULL
);


ALTER TABLE public.friends_favorites OWNER TO mark;

--
-- Name: friends_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: mark
--

CREATE SEQUENCE public.friends_favorites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friends_favorites_id_seq OWNER TO mark;

--
-- Name: friends_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mark
--

ALTER SEQUENCE public.friends_favorites_id_seq OWNED BY public.friends_favorites.id;


--
-- Name: friends_info; Type: TABLE; Schema: public; Owner: mark
--

CREATE TABLE public.friends_info (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    gender character(1) NOT NULL,
    birthplace character varying(30) NOT NULL,
    birthdate date
);


ALTER TABLE public.friends_info OWNER TO mark;

--
-- Name: friends_info_id_seq; Type: SEQUENCE; Schema: public; Owner: mark
--

CREATE SEQUENCE public.friends_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friends_info_id_seq OWNER TO mark;

--
-- Name: friends_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mark
--

ALTER SEQUENCE public.friends_info_id_seq OWNED BY public.friends_info.id;


--
-- Name: friends_favorites id; Type: DEFAULT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.friends_favorites ALTER COLUMN id SET DEFAULT nextval('public.friends_favorites_id_seq'::regclass);


--
-- Name: friends_info id; Type: DEFAULT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.friends_info ALTER COLUMN id SET DEFAULT nextval('public.friends_info_id_seq'::regclass);


--
-- Data for Name: friends_favorites; Type: TABLE DATA; Schema: public; Owner: mark
--

COPY public.friends_favorites (id, name, favorite_color, lucky_number, favorite_quote) FROM stdin;
1	O.V.	aquamarine	31	"Life is what happens when you're busy making other plans." -John Lennon
2	Rosetta	orange	1	"The future belongs to those who believe in the beauty of their dreams." -Eleanor Roosevelt
3	Jim	orange	40	"Whoever is happy will make others happy too." -Anne Frank
4	Iggy	orange	6	"You will face many defeats in life, but never let yourself be defeated." -Maya Angelou
5	Irma	yellow	2	"You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose." -Dr. Seuss
6	Iris	turquoise	12	"Never let the fear of striking out keep you from playing the game." -Babe Ruth
7	Selena	teal	24	"You become what you believe." -Oprah Winfrey
8	Dinah	blue	47	"The purpose of our lives is to be happy." -Dalai Lama
9	Kim	red	27	"You only live once, but if you do it right, once is enough." -Mae West
10	Billy	puce	5	"Love the life you live. Live the life you love." -Bob Marley
11	Esperanza	blue	30	"Life is trying things to see if they work." -Ray Bradbury
12	Conor	pink	8	"If you really look closely, most overnight successes took a long time." -Steve Jobs
13	Timi	mauve	38	"The only limit to our realization of tomorrow will be our doubts of today." -Franklin D. Roosevelt
14	Robin	aubergine	24	"You miss 100% of the shots you don't take." -Wayne Gretzky
15	Karen	goldenrod	45	"It is better to fail in originality than to succeed in imitation." -Herman Melville
16	Ronnie	blue	49	"I have learned over the years that when one's mind is made up, this diminishes fear." -Rosa Parks
17	Donald	orange	44	"100% of the people who give 110% do not understand math." -Demitri Martin
18	Candi	aubergine	22	"The most difficult thing is the decision to act, the rest is merely tenacity." -Amelia Earhart
19	Jello	blue	26	"An unexamined life is not worth living." -Socrates
20	Connie	mauve	31	"I attribute my success to this: I never gave or took any excuse." -Florence Nightingale
21	Denise	green	10	"It does not matter how slowly you go as long as you do not stop." -Confucius
22	Cisco	blue	19	"Dreaming, after all, is a form of planning." -Gloria Steinem
23	Nancy	red	9	"The greatest glory in living lies not in never falling, but in rising every time we fall." -Nelson Mandela
24	Elizabeth	pink	39	"If life were predictable it would cease to be life, and be without flavor." -Eleanor Roosevelt
25	Blaze	orange	3	"Anyone who uses more than two chords is just showing off." -Woody Guthrie
\.


--
-- Data for Name: friends_info; Type: TABLE DATA; Schema: public; Owner: mark
--

COPY public.friends_info (id, name, gender, birthplace, birthdate) FROM stdin;
1	O.V.	M	Tennessee	1939-10-09
2	Rosetta	F	Arkansas	1915-03-20
3	Jim	M	New Mexico	1940-08-13
4	Iggy	M	Michigan	1947-04-21
5	Irma	F	Louisiana	1941-02-18
6	Iris	F	Arkansas	1961-01-05
7	Selena	F	Texas	1971-04-16
8	Dinah	F	Alabama	1924-08-29
9	Kim	F	California	1945-07-20
10	Billy	M	Oklahoma	1914-12-29
11	Esperanza	F	Oregon	1984-10-18
12	Conor	M	Nebraska	1980-02-15
13	Timi	F	California	1940-08-04
14	Robin	M	Wisconsin	1953-01-23
15	Karen	F	Connecticut	1950-03-02
16	Ronnie	M	New Hampshire	1942-07-10
17	Donald	M	Georgia	1983-09-25
18	Candi	F	Alabama	1943-03-13
19	Jello	M	Colorado	1958-06-17
20	Connie	F	New Hampshire	1924-08-03
21	Denise	F	Mississippi	1939-07-16
22	Cisco	M	Delaware	1918-08-18
23	Nancy	F	Ohio	1937-02-20
24	Elizabeth	F	North Carolina	1893-01-05
25	Blaze	M	Arkansas	1949-12-18
\.


--
-- Name: friends_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mark
--

SELECT pg_catalog.setval('public.friends_favorites_id_seq', 25, true);


--
-- Name: friends_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mark
--

SELECT pg_catalog.setval('public.friends_info_id_seq', 25, true);


--
-- Name: friends_favorites friends_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.friends_favorites
    ADD CONSTRAINT friends_favorites_pkey PRIMARY KEY (id);


--
-- Name: friends_info friends_info_pkey; Type: CONSTRAINT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.friends_info
    ADD CONSTRAINT friends_info_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

