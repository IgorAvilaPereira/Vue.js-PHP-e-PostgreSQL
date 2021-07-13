--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)

-- Started on 2021-07-13 00:52:28 -03

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
-- TOC entry 1 (class 3079 OID 13041)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 33334)
-- Name: filme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filme (
    id integer NOT NULL,
    titulo text,
    sinopse text,
    genero text,
    periodo_exibicao_inicio timestamp without time zone,
    periodo_exibicao_fim timestamp without time zone
);


ALTER TABLE public.filme OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 33332)
-- Name: filme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filme_id_seq OWNER TO postgres;

--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 196
-- Name: filme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filme_id_seq OWNED BY public.filme.id;


--
-- TOC entry 201 (class 1259 OID 33358)
-- Name: ingresso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingresso (
    id integer NOT NULL,
    nome_cliente text,
    lugar integer,
    sessao_id integer
);


ALTER TABLE public.ingresso OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33356)
-- Name: ingresso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingresso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingresso_id_seq OWNER TO postgres;

--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 200
-- Name: ingresso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ingresso_id_seq OWNED BY public.ingresso.id;


--
-- TOC entry 199 (class 1259 OID 33345)
-- Name: sessao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessao (
    id integer NOT NULL,
    data_hora timestamp without time zone,
    filme_id integer
);


ALTER TABLE public.sessao OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 33343)
-- Name: sessao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessao_id_seq OWNER TO postgres;

--
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 198
-- Name: sessao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessao_id_seq OWNED BY public.sessao.id;


--
-- TOC entry 203 (class 1259 OID 33676)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    login text,
    senha text
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 33674)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 2807 (class 2604 OID 33337)
-- Name: filme id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme ALTER COLUMN id SET DEFAULT nextval('public.filme_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 33361)
-- Name: ingresso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingresso ALTER COLUMN id SET DEFAULT nextval('public.ingresso_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 33348)
-- Name: sessao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessao ALTER COLUMN id SET DEFAULT nextval('public.sessao_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 33679)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 2945 (class 0 OID 33334)
-- Dependencies: 197
-- Data for Name: filme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filme (id, titulo, sinopse, genero, periodo_exibicao_inicio, periodo_exibicao_fim) FROM stdin;
1	MATRIX 4	NEO E TRINITY	SCI-FI	2021-06-15 19:30:44.2649	2021-06-15 19:32:35.726975
2	TITANIC 4K	ROSE E JACK	ROMANCE	2021-06-15 20:01:15.385054	2021-06-15 20:01:20.625283
\.


--
-- TOC entry 2949 (class 0 OID 33358)
-- Dependencies: 201
-- Data for Name: ingresso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingresso (id, nome_cliente, lugar, sessao_id) FROM stdin;
\.


--
-- TOC entry 2947 (class 0 OID 33345)
-- Dependencies: 199
-- Data for Name: sessao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessao (id, data_hora, filme_id) FROM stdin;
\.


--
-- TOC entry 2951 (class 0 OID 33676)
-- Dependencies: 203
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, login, senha) FROM stdin;
1	iapereira	202cb962ac59075b964b07152d234b70
\.


--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 196
-- Name: filme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filme_id_seq', 2, true);


--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 200
-- Name: ingresso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingresso_id_seq', 1, false);


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 198
-- Name: sessao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessao_id_seq', 1, false);


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 2812 (class 2606 OID 33342)
-- Name: filme filme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 33366)
-- Name: ingresso ingresso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingresso
    ADD CONSTRAINT ingresso_pkey PRIMARY KEY (id);


--
-- TOC entry 2818 (class 2606 OID 33368)
-- Name: ingresso ingresso_sessao_id_lugar_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingresso
    ADD CONSTRAINT ingresso_sessao_id_lugar_key UNIQUE (sessao_id, lugar);


--
-- TOC entry 2814 (class 2606 OID 33350)
-- Name: sessao sessao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_pkey PRIMARY KEY (id);


--
-- TOC entry 2820 (class 2606 OID 33684)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2822 (class 2606 OID 33369)
-- Name: ingresso ingresso_sessao_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingresso
    ADD CONSTRAINT ingresso_sessao_id_fkey FOREIGN KEY (sessao_id) REFERENCES public.sessao(id);


--
-- TOC entry 2821 (class 2606 OID 33351)
-- Name: sessao sessao_filme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_filme_id_fkey FOREIGN KEY (filme_id) REFERENCES public.filme(id);


-- Completed on 2021-07-13 00:52:28 -03

--
-- PostgreSQL database dump complete
--

