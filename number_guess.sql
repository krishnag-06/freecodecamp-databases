--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 947);
INSERT INTO public.games VALUES (2, 1, 84);
INSERT INTO public.games VALUES (3, 2, 289);
INSERT INTO public.games VALUES (4, 2, 949);
INSERT INTO public.games VALUES (5, 1, 363);
INSERT INTO public.games VALUES (6, 1, 388);
INSERT INTO public.games VALUES (7, 1, 433);
INSERT INTO public.games VALUES (8, 3, 181);
INSERT INTO public.games VALUES (9, 3, 589);
INSERT INTO public.games VALUES (10, 4, 742);
INSERT INTO public.games VALUES (11, 4, 2);
INSERT INTO public.games VALUES (12, 3, 649);
INSERT INTO public.games VALUES (13, 3, 459);
INSERT INTO public.games VALUES (14, 3, 737);
INSERT INTO public.games VALUES (15, 5, 340);
INSERT INTO public.games VALUES (16, 5, 39);
INSERT INTO public.games VALUES (17, 6, 619);
INSERT INTO public.games VALUES (18, 6, 268);
INSERT INTO public.games VALUES (19, 5, 523);
INSERT INTO public.games VALUES (20, 5, 296);
INSERT INTO public.games VALUES (21, 5, 969);
INSERT INTO public.games VALUES (22, 7, 530);
INSERT INTO public.games VALUES (23, 7, 888);
INSERT INTO public.games VALUES (24, 8, 727);
INSERT INTO public.games VALUES (25, 8, 222);
INSERT INTO public.games VALUES (26, 7, 103);
INSERT INTO public.games VALUES (27, 7, 190);
INSERT INTO public.games VALUES (28, 7, 170);
INSERT INTO public.games VALUES (29, 9, 293);
INSERT INTO public.games VALUES (30, 9, 659);
INSERT INTO public.games VALUES (31, 10, 714);
INSERT INTO public.games VALUES (32, 10, 449);
INSERT INTO public.games VALUES (33, 9, 889);
INSERT INTO public.games VALUES (34, 9, 152);
INSERT INTO public.games VALUES (35, 9, 261);
INSERT INTO public.games VALUES (36, 11, 447);
INSERT INTO public.games VALUES (37, 11, 82);
INSERT INTO public.games VALUES (38, 12, 27);
INSERT INTO public.games VALUES (39, 12, 239);
INSERT INTO public.games VALUES (40, 11, 151);
INSERT INTO public.games VALUES (41, 11, 457);
INSERT INTO public.games VALUES (42, 11, 203);
INSERT INTO public.games VALUES (43, 13, 44);
INSERT INTO public.games VALUES (44, 13, 871);
INSERT INTO public.games VALUES (45, 14, 503);
INSERT INTO public.games VALUES (46, 14, 548);
INSERT INTO public.games VALUES (47, 13, 383);
INSERT INTO public.games VALUES (48, 13, 416);
INSERT INTO public.games VALUES (49, 13, 297);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1774594601586');
INSERT INTO public.users VALUES (2, 'user_1774594601585');
INSERT INTO public.users VALUES (3, 'user_1774594634906');
INSERT INTO public.users VALUES (4, 'user_1774594634905');
INSERT INTO public.users VALUES (5, 'user_1774595094764');
INSERT INTO public.users VALUES (6, 'user_1774595094763');
INSERT INTO public.users VALUES (7, 'user_1774595196212');
INSERT INTO public.users VALUES (8, 'user_1774595196211');
INSERT INTO public.users VALUES (9, 'user_1774595305151');
INSERT INTO public.users VALUES (10, 'user_1774595305150');
INSERT INTO public.users VALUES (11, 'user_1774595421322');
INSERT INTO public.users VALUES (12, 'user_1774595421321');
INSERT INTO public.users VALUES (13, 'user_1774595494261');
INSERT INTO public.users VALUES (14, 'user_1774595494260');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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

