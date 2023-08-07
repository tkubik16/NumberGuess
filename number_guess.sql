--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    guess_count integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3);
INSERT INTO public.games VALUES (12, 277);
INSERT INTO public.games VALUES (12, 600);
INSERT INTO public.games VALUES (13, 981);
INSERT INTO public.games VALUES (13, 364);
INSERT INTO public.games VALUES (12, 358);
INSERT INTO public.games VALUES (12, 824);
INSERT INTO public.games VALUES (12, 755);
INSERT INTO public.games VALUES (14, 318);
INSERT INTO public.games VALUES (14, 501);
INSERT INTO public.games VALUES (15, 137);
INSERT INTO public.games VALUES (15, 118);
INSERT INTO public.games VALUES (14, 665);
INSERT INTO public.games VALUES (14, 809);
INSERT INTO public.games VALUES (14, 555);
INSERT INTO public.games VALUES (16, 299);
INSERT INTO public.games VALUES (16, 935);
INSERT INTO public.games VALUES (17, 40);
INSERT INTO public.games VALUES (17, 192);
INSERT INTO public.games VALUES (16, 793);
INSERT INTO public.games VALUES (16, 164);
INSERT INTO public.games VALUES (16, 133);
INSERT INTO public.games VALUES (18, 317);
INSERT INTO public.games VALUES (18, 473);
INSERT INTO public.games VALUES (19, 584);
INSERT INTO public.games VALUES (19, 694);
INSERT INTO public.games VALUES (18, 6);
INSERT INTO public.games VALUES (18, 870);
INSERT INTO public.games VALUES (18, 526);
INSERT INTO public.games VALUES (20, 129);
INSERT INTO public.games VALUES (20, 352);
INSERT INTO public.games VALUES (21, 900);
INSERT INTO public.games VALUES (21, 30);
INSERT INTO public.games VALUES (20, 628);
INSERT INTO public.games VALUES (20, 682);
INSERT INTO public.games VALUES (20, 536);
INSERT INTO public.games VALUES (1, 18);
INSERT INTO public.games VALUES (22, 471);
INSERT INTO public.games VALUES (22, 717);
INSERT INTO public.games VALUES (23, 594);
INSERT INTO public.games VALUES (23, 457);
INSERT INTO public.games VALUES (22, 10);
INSERT INTO public.games VALUES (22, 918);
INSERT INTO public.games VALUES (22, 779);
INSERT INTO public.games VALUES (24, 341);
INSERT INTO public.games VALUES (24, 156);
INSERT INTO public.games VALUES (25, 442);
INSERT INTO public.games VALUES (25, 20);
INSERT INTO public.games VALUES (24, 772);
INSERT INTO public.games VALUES (24, 652);
INSERT INTO public.games VALUES (24, 582);
INSERT INTO public.games VALUES (26, 777);
INSERT INTO public.games VALUES (26, 722);
INSERT INTO public.games VALUES (27, 258);
INSERT INTO public.games VALUES (27, 423);
INSERT INTO public.games VALUES (26, 693);
INSERT INTO public.games VALUES (26, 474);
INSERT INTO public.games VALUES (26, 540);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Tom');
INSERT INTO public.users VALUES (2, 'user_1691369299713');
INSERT INTO public.users VALUES (3, 'user_1691369299712');
INSERT INTO public.users VALUES (4, 'user_1691369458849');
INSERT INTO public.users VALUES (5, 'user_1691369458848');
INSERT INTO public.users VALUES (6, 'user_1691369489645');
INSERT INTO public.users VALUES (7, 'user_1691369489644');
INSERT INTO public.users VALUES (8, 'user_1691369585665');
INSERT INTO public.users VALUES (9, 'user_1691369585664');
INSERT INTO public.users VALUES (10, 'user_1691369617360');
INSERT INTO public.users VALUES (11, 'user_1691369617359');
INSERT INTO public.users VALUES (12, 'user_1691372306063');
INSERT INTO public.users VALUES (13, 'user_1691372306062');
INSERT INTO public.users VALUES (14, 'user_1691372385690');
INSERT INTO public.users VALUES (15, 'user_1691372385689');
INSERT INTO public.users VALUES (16, 'user_1691372490532');
INSERT INTO public.users VALUES (17, 'user_1691372490531');
INSERT INTO public.users VALUES (18, 'user_1691372528197');
INSERT INTO public.users VALUES (19, 'user_1691372528196');
INSERT INTO public.users VALUES (20, 'user_1691372589949');
INSERT INTO public.users VALUES (21, 'user_1691372589948');
INSERT INTO public.users VALUES (22, 'user_1691372739340');
INSERT INTO public.users VALUES (23, 'user_1691372739339');
INSERT INTO public.users VALUES (24, 'user_1691372766416');
INSERT INTO public.users VALUES (25, 'user_1691372766415');
INSERT INTO public.users VALUES (26, 'user_1691372823072');
INSERT INTO public.users VALUES (27, 'user_1691372823071');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

