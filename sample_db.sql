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
-- Name: musicians_favorites; Type: TABLE; Schema: public; Owner: mark
--

CREATE TABLE public.musicians_favorites (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    favorite_color character varying(30) NOT NULL,
    lucky_number integer NOT NULL,
    favorite_fruit character varying(30) NOT NULL
);


ALTER TABLE public.musicians_favorites OWNER TO mark;

--
-- Name: musicians_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: mark
--

CREATE SEQUENCE public.musicians_favorites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musicians_favorites_id_seq OWNER TO mark;

--
-- Name: musicians_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mark
--

ALTER SEQUENCE public.musicians_favorites_id_seq OWNED BY public.musicians_favorites.id;


--
-- Name: musicians_info; Type: TABLE; Schema: public; Owner: mark
--

CREATE TABLE public.musicians_info (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    gender character(1) NOT NULL,
    birthplace character varying(30) NOT NULL,
    birthdate date
);


ALTER TABLE public.musicians_info OWNER TO mark;

--
-- Name: musicians_info_id_seq; Type: SEQUENCE; Schema: public; Owner: mark
--

CREATE SEQUENCE public.musicians_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musicians_info_id_seq OWNER TO mark;

--
-- Name: musicians_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mark
--

ALTER SEQUENCE public.musicians_info_id_seq OWNED BY public.musicians_info.id;


--
-- Name: musicians_favorites id; Type: DEFAULT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.musicians_favorites ALTER COLUMN id SET DEFAULT nextval('public.musicians_favorites_id_seq'::regclass);


--
-- Name: musicians_info id; Type: DEFAULT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.musicians_info ALTER COLUMN id SET DEFAULT nextval('public.musicians_info_id_seq'::regclass);


--
-- Data for Name: musicians_favorites; Type: TABLE DATA; Schema: public; Owner: mark
--

COPY public.musicians_favorites (id, name, favorite_color, lucky_number, favorite_fruit) FROM stdin;
1	O.V. Wright	aquamarine	75	cantaloupe
2	Rosetta Tharpe	orange	1	cherry
3	Carl Perkins	orange	24	rambutan
4	Iggy Pop	orange	6	apple
5	Irma Thomas	yellow	44	cucumber
6	Hoagy Charmichael	turquoise	26	grape
7	Selena Quintanilla-Pérez	teal	72	orange
8	Dinah Washington	blue	47	orange
9	Kim Carnes	red	27	lemon
10	Barbara Streisand	puce	5	grapefruit
11	Esperanza Spalding	blue	86	tomato
12	Conor Oberst	pink	81	jackfruit
13	Son House	mauve	81	banana
14	Hoyt Axton	goldenrod	94	pineapple
15	Karen Carpenter	goldenrod	34	honeydew
16	Ronnie James Dio	blue	81	blackberry
17	Donald Glover	orange	44	tangerine
18	John Perry Barlow	aubergine	22	mandarin
19	Jello Biafra	blue	88	lime
20	Connie Converse	mauve	56	pumpkin
21	John Denver	green	10	clementine
22	Glenn Miller	blue	19	coconut
23	Nancy Wilson	red	9	pineapple
24	Elizabeth Cotten	pink	39	tomato
25	Blaze Foley	orange	89	nectarine
26	Candi Stanton	purple	62	papaya
27	Bettye Swann	yellow	17	avocado
28	James Carr	teal	17	yuzu
29	Denise LaSalle	mauve	66	ugli fruit
30	Lee Dorsey	yellow	59	date
31	Carol Kaye	pink	1	elderberry
32	Geno Washington	maroon	16	strawberry
33	Rob Crow	goldenrod	96	blackcurrant
34	Robbie Dupree	fuschia	55	citron
35	Don Ho	purple	84	passionfruit
36	Timi Yuro	purple	60	star fruit
37	Norah Jones	puce	88	peach
38	Bob Dylan	yellow	32	pear
39	Peggy Lee	pink	87	huckleberry
40	Bill Conti	teal	78	watermelon
41	Billy Tipton	crimson	7	boysenberry
42	Cisco Houston	yellow	64	pomegranate
43	Charles Mingus	crimson	89	kumquat
44	Jackie DeShannon	mauve	50	honeydew
45	Judy Garland	goldenrod	30	blueberry
46	Demi Lovato	green	36	rambutan
47	Doug Martsch	red	37	cantaloupe
48	Debbie Harry	indigo	36	raspberry
49	Ann Peebles	indigo	97	mango
50	Fuzzy Haskins	maroon	46	apple
51	Freda Payne	yellow	18	guava
52	May Erlewine	purple	71	cherry
53	Levon Helm	pink	3	dragonfruit
54	Buck Owens	crimson	95	plum
55	Loretta Lynn	red	36	banana
56	Bobby Vee	teal	68	cucumber
57	Wendy Carlos	teal	52	apricot
58	Rhonda Vincent	indigo	88	tangerine
59	Oleta Adams	indigo	78	grape
60	Lorie Line	yellow	18	lime
61	Jackie Moore	purple	19	orange
62	Neko Case	teal	85	cherry
63	John Flansburgh	puce	85	pear
64	Ruth Pointer	red	20	tangelo
65	Marie Osmond	teal	49	jujube
66	Joe Walsh	fuschia	59	quince
67	John Prine	puce	92	durian
68	Patti LaBelle	goldenrod	70	jackfruit
69	Jaco Pastorius	puce	70	lychee
70	Belinda Carlisle	khaki	38	banana
71	James Brown	indigo	54	boysenberry
72	Patty Griffin	green	26	lemon
73	June Carter Cash	green	8	pineapple
74	Chet Atkins	pink	15	kumquat
75	Emma Bush	orange	90	grape
76	Toni Braxton	turquoise	90	honeydew
77	Billie Holiday	pink	45	redcurrant
78	Del Shannon	goldenrod	39	passionfruit
79	Mark Mothersbaugh	pink	15	ugli fruit
80	Robin Zander	blue	11	quince
81	Buzz Osborne	goldenrod	15	mulberry
82	Sixto Rodriguez	orange	30	olive
83	Iris Dement	teal	80	coconut
84	Tierra Whack	maroon	13	strawberry
85	Bruce Hampton	pink	94	tomato
86	Lee Ritenour	puce	92	kiwi
87	Suzi Quatro	goldenrod	24	cherry
88	Eartha Kitt	purple	1	fig
89	Mildred Bailey	purple	25	persimmon
90	Vanessa Carlton	khaki	23	jujube
91	Wilma Lee Cooper	violet	1	strawberry
92	Steve Miller	blue	89	gooseberry
93	Art Tatum	purple	75	star fruit
94	Danny Brown	violet	36	plum
95	Cab Calloway	goldenrod	59	apricot
96	Lesley Gore	blue	46	tamarind
97	Patty Larkin	turquoise	10	durian
98	Bette Midler	goldenrod	17	cherry
99	Tina Turner	blue	16	rambutan
100	Dizzy Gillespie	puce	2	pineapple
\.


--
-- Data for Name: musicians_info; Type: TABLE DATA; Schema: public; Owner: mark
--

COPY public.musicians_info (id, name, gender, birthplace, birthdate) FROM stdin;
1	O.V. Wright	M	Tennessee	1939-10-09
2	Rosetta Tharpe	F	Arkansas	1915-03-20
3	Carl Perkins	M	Tennessee	1932-04-09
4	Iggy Pop	M	Michigan	1947-04-21
5	Irma Thomas	F	Louisiana	1941-02-18
6	Hoagy Charmichael	M	Indiana	1899-11-22
7	Selena Quintanilla-Pérez	F	Texas	1971-04-16
8	Dinah Washington	F	Alabama	1924-08-29
9	Kim Carnes	F	California	1945-07-20
10	Barbara Streisand	F	New York	1942-04-24
11	Esperanza Spalding	F	Oregon	1984-10-18
12	Conor Oberst	M	Nebraska	1980-02-15
13	Son House	M	Mississippi	1902-03-21
14	Hoyt Axton	M	Oklahoma	1938-03-25
15	Karen Carpenter	F	Connecticut	1950-03-02
16	Ronnie James Dio	M	New Hampshire	1942-07-10
17	Donald Glover	M	Georgia	1983-09-25
18	John Perry Barlow	M	Indiana	1947-10-03
19	Jello Biafra	M	Colorado	1958-06-17
20	Connie Converse	F	New Hampshire	1924-08-03
21	John Denver	M	New Mexico	1943-12-31
22	Glenn Miller	M	Iowa	1904-03-01
23	Nancy Wilson	F	Ohio	1937-02-20
24	Elizabeth Cotten	F	North Carolina	1893-01-05
25	Blaze Foley	M	Arkansas	1949-12-18
26	Candi Staton	F	Alabama	1943-03-13
27	Bettye Swann	F	Louisiana	1944-10-24
28	James Carr	M	Mississippi	1942-06-13
29	Denise LaSalle	F	Mississippi	1939-07-16
30	Lee Dorsey	M	Louisiana	1924-12-24
31	Carol Kaye	F	Washington	1935-03-24
32	Geno Washington	M	Indiana	1946-01-01
33	Rob Crow	M	New Jersey	1971-02-21
34	Robbie Dupree	M	New York	1946-12-23
35	Don Ho	M	Hawaii	1930-08-13
36	Timi Yuro	F	California	1940-08-04
37	Norah Jones	F	New York	1979-03-30
38	Bob Dylan	M	Minnesota	1941-05-24
39	Peggy Lee	F	North Dakota	1920-05-26
40	Bill Conti	M	Rhode Island	1942-04-13
41	Billy Tipton	M	Oklahoma	1914-12-29
42	Cisco Houston	M	Delaware	1918-08-18
43	Charles Mingus	M	Arizona	1922-04-22
44	Jackie DeShannon	F	Kentucky	1941-08-21
45	Judy Garland	F	Minnesota	1922-06-10
46	Demi Lovato	F	New Mexico	1922-08-20
47	Doug Martsch	M	Idaho	1969-09-16
48	Debbie Harry	F	Florida	1945-07-01
49	Ann Peebles	F	Missouri	1947-04-27
50	Fuzzy Haskins	M	West Virginia	1941-06-08
51	Freda Payne	F	Michigan	1942-09-19
52	May Erlewine	F	Michigan	1983-05-13
53	Levon Helm	M	Arkansas	1940-05-26
54	Buck Owens	M	Texas	1929-08-12
55	Loretta Lynn	F	Kentucky	1932-04-14
56	Bobby Vee	M	North Dakota	1943-04-30
57	Wendy Carlos	F	Rhode Island	1943-04-30
58	Rhonda Vincent	F	Missouri	1962-07-13
59	Oleta Adams	F	Washington	1953-05-04
60	Lorie Line	F	Minnesota	1958-06-05
61	Jackie Moore	F	Florida	1946-01-01
62	Neko Case	F	Virginia	1970-09-08
63	John Flansburgh	M	Massachusetts	1960-05-06
64	Ruth Pointer	F	California	1956-03-19
65	Marie Osmond	F	Utah	1959-10-13
66	Joe Walsh	M	Kansas	1947-11-20
67	John Prine	M	Illinois	1946-10-10
68	Patti LaBelle	F	Pennsylvania	1944-05-24
69	Jaco Pastorius	M	Pennsylvania	1951-12-01
70	Belinda Carlisle	F	California	1958-08-17
71	James Brown	M	South Carolina	1933-05-03
72	Patty Griffin	F	Maine	1964-03-16
73	June Carter Cash	F	Virginia	1929-06-23
74	Chet Atkins	M	Tennessee	1924-06-20
75	Emma Bush	F	Hawaii	1900-01-01
76	Toni Braxton	F	Maryland	1967-10-07
77	Billie Holiday	F	Pennsylvania	1915-04-07
78	Del Shannon	M	Michigan	1934-12-30
79	Mark Mothersbaugh	M	Ohio	1950-05-18
80	Robin Zander	M	Wisconsin	1953-01-23
81	Buzz Osborne	M	Washington	1964-03-25
82	Sixto Rodriguez	M	Michigan	1942-07-10
83	Iris Dement	F	Arkansas	1961-01-05
84	Tierra Whack	F	Pennsylvania	1995-08-11
85	Bruce Hampton	M	Tennessee	1947-04-30
86	Lee Ritenour	M	California	1952-01-11
87	Suzi Quatro	F	Michigan	1950-06-03
88	Eartha Kitt	F	South Carolina	1927-01-17
89	Mildred Bailey	F	Washington	1907-02-27
90	Vanessa Carlton	F	Pennsylvania	1980-08-16
91	Wilma Lee Cooper	F	West Virginia	1921-02-07
92	Steve Miller	M	Wisconsin	1943-10-05
93	Art Tatum	M	Ohio	1909-10-13
94	Danny Brown	M	Michigan	1981-03-16
95	Cab Calloway	M	Maryland	1907-12-25
96	Lesley Gore	F	New York	1946-05-02
97	Patty Larkin	F	Iowa	1951-06-19
98	Bette Midler	F	Hawaii	1945-12-01
99	Tina Turner	F	Tennessee	1939-11-26
100	Dizzy Gillespie	M	South Carolina	1917-10-21
\.


--
-- Name: musicians_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mark
--

SELECT pg_catalog.setval('public.musicians_favorites_id_seq', 100, true);


--
-- Name: musicians_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mark
--

SELECT pg_catalog.setval('public.musicians_info_id_seq', 100, true);


--
-- Name: musicians_favorites musicians_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.musicians_favorites
    ADD CONSTRAINT musicians_favorites_pkey PRIMARY KEY (id);


--
-- Name: musicians_info musicians_info_pkey; Type: CONSTRAINT; Schema: public; Owner: mark
--

ALTER TABLE ONLY public.musicians_info
    ADD CONSTRAINT musicians_info_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

