--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO naicauser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO naicauser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO naicauser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO naicauser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO naicauser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO naicauser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO naicauser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO naicauser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO naicauser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO naicauser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO naicauser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO naicauser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO naicauser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO naicauser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO naicauser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO naicauser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO naicauser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO naicauser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO naicauser;

--
-- Name: myapp_ally; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.myapp_ally (
    id bigint NOT NULL,
    ally_name character varying(200) NOT NULL,
    ally_image character varying(100) NOT NULL,
    pub_date timestamp with time zone NOT NULL,
    ally_industry character varying(2) NOT NULL,
    ally_url character varying(250) NOT NULL
);


ALTER TABLE public.myapp_ally OWNER TO naicauser;

--
-- Name: myapp_ally_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.myapp_ally_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.myapp_ally_id_seq OWNER TO naicauser;

--
-- Name: myapp_ally_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.myapp_ally_id_seq OWNED BY public.myapp_ally.id;


--
-- Name: myapp_testimonial; Type: TABLE; Schema: public; Owner: naicauser
--

CREATE TABLE public.myapp_testimonial (
    id bigint NOT NULL,
    testimonial_text character varying(200) NOT NULL,
    testimonial_author character varying(200) NOT NULL
);


ALTER TABLE public.myapp_testimonial OWNER TO naicauser;

--
-- Name: myapp_testimonial_id_seq; Type: SEQUENCE; Schema: public; Owner: naicauser
--

CREATE SEQUENCE public.myapp_testimonial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.myapp_testimonial_id_seq OWNER TO naicauser;

--
-- Name: myapp_testimonial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: naicauser
--

ALTER SEQUENCE public.myapp_testimonial_id_seq OWNED BY public.myapp_testimonial.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: myapp_ally id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.myapp_ally ALTER COLUMN id SET DEFAULT nextval('public.myapp_ally_id_seq'::regclass);


--
-- Name: myapp_testimonial id; Type: DEFAULT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.myapp_testimonial ALTER COLUMN id SET DEFAULT nextval('public.myapp_testimonial_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add ally	7	add_ally
26	Can change ally	7	change_ally
27	Can delete ally	7	delete_ally
28	Can view ally	7	view_ally
29	Can add testimonial	8	add_testimonial
30	Can change testimonial	8	change_testimonial
31	Can delete testimonial	8	delete_testimonial
32	Can view testimonial	8	view_testimonial
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$DIhEhLZPBlh5WIJBwR0p8w$A4NV53Lzx1s/N0A1PFBR/lj8QNWF1MrghrEmAhD/AyQ=	2022-11-29 13:46:37.810131-06	t	admin			fernanda@enigma.mx	t	t	2022-11-29 13:46:16.888465-06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-11-29 17:43:30.564991-06	1	Ally object (1)	1	[{"added": {}}]	7	1
2	2022-11-29 18:11:45.834917-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
3	2022-11-29 22:30:41.535907-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
4	2022-11-30 00:52:41.288386-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
5	2022-11-30 00:55:01.213687-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
6	2022-11-30 01:09:11.40811-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
7	2022-11-30 01:12:07.608649-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
8	2022-11-30 01:16:36.215367-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
9	2022-11-30 01:53:51.162532-06	1	Cisco	2	[{"changed": {"fields": ["Ally image"]}}]	7	1
10	2022-11-30 04:13:58.107602-06	1	Ambrose C.	1	[{"added": {}}]	8	1
11	2022-11-30 10:09:35.208554-06	2	Alex B.	1	[{"added": {}}]	8	1
12	2022-11-30 10:16:04.104831-06	2	Alex B.	3		8	1
13	2022-12-04 21:46:13.135526-06	3	Alex B.	1	[{"added": {}}]	8	1
14	2022-12-08 02:42:55.138068-06	3	Alex B.	2	[{"changed": {"fields": ["Testimonial text"]}}]	8	1
15	2022-12-08 02:43:41.330803-06	3	Alex B.	2	[{"changed": {"fields": ["Testimonial text"]}}]	8	1
16	2022-12-08 02:45:55.544929-06	3	Alex B.	2	[{"changed": {"fields": ["Testimonial text"]}}]	8	1
17	2022-12-08 02:46:19.543193-06	3	Alex B.	2	[{"changed": {"fields": ["Testimonial text"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	myapp	ally
8	myapp	testimonial
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-11-29 11:11:14.687645-06
2	auth	0001_initial	2022-11-29 11:11:14.737301-06
3	admin	0001_initial	2022-11-29 11:11:14.748039-06
4	admin	0002_logentry_remove_auto_add	2022-11-29 11:11:14.753879-06
5	admin	0003_logentry_add_action_flag_choices	2022-11-29 11:11:14.758515-06
6	contenttypes	0002_remove_content_type_name	2022-11-29 11:11:14.768876-06
7	auth	0002_alter_permission_name_max_length	2022-11-29 11:11:14.773913-06
8	auth	0003_alter_user_email_max_length	2022-11-29 11:11:14.778826-06
9	auth	0004_alter_user_username_opts	2022-11-29 11:11:14.783173-06
10	auth	0005_alter_user_last_login_null	2022-11-29 11:11:14.787862-06
11	auth	0006_require_contenttypes_0002	2022-11-29 11:11:14.789105-06
12	auth	0007_alter_validators_add_error_messages	2022-11-29 11:11:14.793836-06
13	auth	0008_alter_user_username_max_length	2022-11-29 11:11:14.803627-06
14	auth	0009_alter_user_last_name_max_length	2022-11-29 11:11:14.807974-06
15	auth	0010_alter_group_name_max_length	2022-11-29 11:11:14.813486-06
16	auth	0011_update_proxy_permissions	2022-11-29 11:11:14.818154-06
17	auth	0012_alter_user_first_name_max_length	2022-11-29 11:11:14.822716-06
18	sessions	0001_initial	2022-11-29 11:11:14.830445-06
19	myapp	0001_initial	2022-11-29 13:41:35.648421-06
20	myapp	0002_auto_20221129_1742	2022-11-29 17:42:55.253485-06
21	myapp	0003_alter_ally_ally_image	2022-11-29 21:35:09.346467-06
22	myapp	0004_alter_ally_ally_image	2022-11-30 00:35:11.80493-06
23	myapp	0005_alter_ally_ally_image	2022-11-30 00:54:52.12445-06
24	myapp	0006_alter_ally_ally_image	2022-11-30 01:11:06.351234-06
25	myapp	0007_alter_ally_ally_image	2022-11-30 01:16:17.233986-06
26	myapp	0008_alter_ally_ally_image	2022-11-30 01:53:17.248857-06
27	myapp	0009_auto_20221208_0245	2022-12-08 02:45:16.37347-06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
nqlq2msqzhqmtbae02odpwz3amrmj5wd	.eJxVjMsOwiAQRf-FtSE8HAou3fsNZAYGqRqalHZl_HfbpAvd3nPOfYuI61Lj2nmOYxYXocXpdyNMT247yA9s90mmqS3zSHJX5EG7vE2ZX9fD_Tuo2OtWJ4fgtTLOExpHBpQ6WyyEwQ_sLHouKSQAShvwCGwdFwiuUBms0UZ8vtvxN84:1p06Yv:MABWhUNKBAhufmQMciUJWdt3f_almxc1nL4gXjr5JtM	2022-12-13 13:46:37.812284-06
\.


--
-- Data for Name: myapp_ally; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.myapp_ally (id, ally_name, ally_image, pub_date, ally_industry, ally_url) FROM stdin;
1	Cisco	uploads/allies/cisco-TEMP.png	2022-11-29 17:43:28-06	2	https://www.cisco.com
\.


--
-- Data for Name: myapp_testimonial; Type: TABLE DATA; Schema: public; Owner: naicauser
--

COPY public.myapp_testimonial (id, testimonial_text, testimonial_author) FROM stdin;
1	I can trust Naica and it’s team make sure my capital is working for me rather than just sit stagnant. They take my best interests into account.	Ambrose C.
3	I can trust Naica and it’s team make sure my capital is working for me rather than just sit stagnant. They take my best interests into account.	Alex B.
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 17, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: myapp_ally_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.myapp_ally_id_seq', 1, true);


--
-- Name: myapp_testimonial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: naicauser
--

SELECT pg_catalog.setval('public.myapp_testimonial_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: myapp_ally myapp_ally_ally_url_key; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.myapp_ally
    ADD CONSTRAINT myapp_ally_ally_url_key UNIQUE (ally_url);


--
-- Name: myapp_ally myapp_ally_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.myapp_ally
    ADD CONSTRAINT myapp_ally_pkey PRIMARY KEY (id);


--
-- Name: myapp_testimonial myapp_testimonial_pkey; Type: CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.myapp_testimonial
    ADD CONSTRAINT myapp_testimonial_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: myapp_ally_ally_url_3089e5d3_like; Type: INDEX; Schema: public; Owner: naicauser
--

CREATE INDEX myapp_ally_ally_url_3089e5d3_like ON public.myapp_ally USING btree (ally_url varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: naicauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

