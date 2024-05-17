--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer NOT NULL,
    secret_number integer NOT NULL,
    guesses integer,
    "timestamp" timestamp without time zone
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (2, 11, 400, 16, '2024-05-17 04:40:12.799354');
INSERT INTO public.games VALUES (3, 11, 511, 9, '2024-05-17 04:40:25.686071');
INSERT INTO public.games VALUES (4, 11, 159, 12, '2024-05-17 04:40:36.089771');
INSERT INTO public.games VALUES (5, 12, 666, 6, '2024-05-17 04:40:46.350063');
INSERT INTO public.games VALUES (6, 12, 108, 8, '2024-05-17 04:40:54.728082');
INSERT INTO public.games VALUES (7, 51, 901, 20, '2024-05-17 06:12:12.040456');
INSERT INTO public.games VALUES (8, 11, 760, 14, '2024-05-17 06:16:29.332252');
INSERT INTO public.games VALUES (9, 11, 350, 8, '2024-05-17 06:36:50.529955');
INSERT INTO public.games VALUES (10, 64, 28, 29, '2024-05-17 06:37:02.880815');
INSERT INTO public.games VALUES (11, 64, 861, 862, '2024-05-17 06:37:03.003385');
INSERT INTO public.games VALUES (12, 65, 267, 268, '2024-05-17 06:37:03.086441');
INSERT INTO public.games VALUES (13, 65, 864, 865, '2024-05-17 06:37:03.213507');
INSERT INTO public.games VALUES (14, 64, 463, 466, '2024-05-17 06:37:03.307834');
INSERT INTO public.games VALUES (15, 64, 3, 3, '2024-05-17 06:37:03.370152');
INSERT INTO public.games VALUES (16, 64, 579, 580, '2024-05-17 06:37:03.469458');
INSERT INTO public.games VALUES (17, 11, 927, 12, '2024-05-17 06:37:44.684938');
INSERT INTO public.games VALUES (18, 11, 736, 9, '2024-05-17 06:38:22.994589');
INSERT INTO public.games VALUES (19, 66, 585, 586, '2024-05-17 06:38:44.034468');
INSERT INTO public.games VALUES (20, 66, 723, 724, '2024-05-17 06:38:44.154747');
INSERT INTO public.games VALUES (21, 67, 150, 151, '2024-05-17 06:38:44.231516');
INSERT INTO public.games VALUES (22, 67, 688, 689, '2024-05-17 06:38:44.34196');
INSERT INTO public.games VALUES (23, 66, 469, 472, '2024-05-17 06:38:44.433798');
INSERT INTO public.games VALUES (24, 66, 18, 18, '2024-05-17 06:38:44.49901');
INSERT INTO public.games VALUES (25, 66, 48, 49, '2024-05-17 06:38:44.565408');
INSERT INTO public.games VALUES (26, 68, 774, 775, '2024-05-17 06:38:48.657178');
INSERT INTO public.games VALUES (27, 68, 703, 704, '2024-05-17 06:38:48.77417');
INSERT INTO public.games VALUES (28, 69, 661, 662, '2024-05-17 06:38:48.884627');
INSERT INTO public.games VALUES (29, 69, 845, 846, '2024-05-17 06:38:49.016387');
INSERT INTO public.games VALUES (30, 68, 832, 835, '2024-05-17 06:38:49.133923');
INSERT INTO public.games VALUES (31, 68, 330, 330, '2024-05-17 06:38:49.216076');
INSERT INTO public.games VALUES (32, 68, 700, 701, '2024-05-17 06:38:49.326231');
INSERT INTO public.games VALUES (33, 11, 686, 12, '2024-05-17 06:41:21.25464');
INSERT INTO public.games VALUES (34, 72, 674, 675, '2024-05-17 06:41:30.533119');
INSERT INTO public.games VALUES (35, 72, 482, 483, '2024-05-17 06:41:32.647262');
INSERT INTO public.games VALUES (36, 73, 46, 47, '2024-05-17 06:41:34.727919');
INSERT INTO public.games VALUES (37, 73, 516, 517, '2024-05-17 06:41:36.835229');
INSERT INTO public.games VALUES (38, 72, 860, 863, '2024-05-17 06:41:38.966261');
INSERT INTO public.games VALUES (39, 72, 521, 521, '2024-05-17 06:41:41.073291');
INSERT INTO public.games VALUES (40, 72, 427, 428, '2024-05-17 06:41:43.169068');
INSERT INTO public.games VALUES (41, 74, 59, 60, '2024-05-17 06:42:40.633095');
INSERT INTO public.games VALUES (42, 74, 404, 405, '2024-05-17 06:42:40.732671');
INSERT INTO public.games VALUES (43, 75, 131, 132, '2024-05-17 06:42:40.80717');
INSERT INTO public.games VALUES (44, 75, 367, 368, '2024-05-17 06:42:40.903252');
INSERT INTO public.games VALUES (45, 74, 971, 974, '2024-05-17 06:42:41.042236');
INSERT INTO public.games VALUES (46, 74, 257, 257, '2024-05-17 06:42:41.129126');
INSERT INTO public.games VALUES (47, 74, 46, 47, '2024-05-17 06:42:41.200856');
INSERT INTO public.games VALUES (48, 12, 887, 8, '2024-05-17 07:00:25.657954');
INSERT INTO public.games VALUES (49, 92, 338, 339, '2024-05-17 07:00:43.0663');
INSERT INTO public.games VALUES (50, 92, 931, 932, '2024-05-17 07:00:43.186687');
INSERT INTO public.games VALUES (51, 93, 602, 603, '2024-05-17 07:00:43.305875');
INSERT INTO public.games VALUES (52, 93, 65, 66, '2024-05-17 07:00:43.372741');
INSERT INTO public.games VALUES (53, 92, 890, 893, '2024-05-17 07:00:43.486242');
INSERT INTO public.games VALUES (54, 92, 896, 896, '2024-05-17 07:00:43.603688');
INSERT INTO public.games VALUES (55, 92, 835, 836, '2024-05-17 07:00:43.69905');
INSERT INTO public.games VALUES (56, 96, 390, 391, '2024-05-17 07:01:55.807259');
INSERT INTO public.games VALUES (57, 96, 582, 583, '2024-05-17 07:01:55.900462');
INSERT INTO public.games VALUES (58, 97, 201, 202, '2024-05-17 07:01:55.970187');
INSERT INTO public.games VALUES (59, 97, 615, 616, '2024-05-17 07:01:56.072065');
INSERT INTO public.games VALUES (60, 96, 927, 930, '2024-05-17 07:01:56.197918');
INSERT INTO public.games VALUES (61, 96, 120, 120, '2024-05-17 07:01:56.266601');
INSERT INTO public.games VALUES (62, 96, 312, 313, '2024-05-17 07:01:56.340194');
INSERT INTO public.games VALUES (63, 98, 408, 409, '2024-05-17 07:03:07.916403');
INSERT INTO public.games VALUES (64, 98, 443, 444, '2024-05-17 07:03:08.00877');
INSERT INTO public.games VALUES (65, 99, 255, 256, '2024-05-17 07:03:08.091065');
INSERT INTO public.games VALUES (66, 99, 84, 85, '2024-05-17 07:03:08.161399');
INSERT INTO public.games VALUES (67, 98, 868, 871, '2024-05-17 07:03:08.286285');
INSERT INTO public.games VALUES (68, 98, 34, 34, '2024-05-17 07:03:08.355566');
INSERT INTO public.games VALUES (69, 98, 625, 626, '2024-05-17 07:03:08.453627');
INSERT INTO public.games VALUES (70, 100, 560, 561, '2024-05-17 07:04:14.388871');
INSERT INTO public.games VALUES (71, 100, 278, 279, '2024-05-17 07:04:14.467303');
INSERT INTO public.games VALUES (72, 101, 836, 837, '2024-05-17 07:04:14.591561');
INSERT INTO public.games VALUES (73, 101, 940, 941, '2024-05-17 07:04:14.721268');
INSERT INTO public.games VALUES (74, 100, 160, 163, '2024-05-17 07:04:14.790988');
INSERT INTO public.games VALUES (75, 100, 80, 80, '2024-05-17 07:04:14.857957');
INSERT INTO public.games VALUES (76, 100, 587, 588, '2024-05-17 07:04:14.954576');
INSERT INTO public.games VALUES (77, 102, 360, 361, '2024-05-17 07:04:59.010382');
INSERT INTO public.games VALUES (78, 102, 380, 381, '2024-05-17 07:04:59.103205');
INSERT INTO public.games VALUES (79, 103, 909, 910, '2024-05-17 07:04:59.223494');
INSERT INTO public.games VALUES (80, 103, 129, 130, '2024-05-17 07:04:59.299875');
INSERT INTO public.games VALUES (81, 102, 437, 440, '2024-05-17 07:04:59.398461');
INSERT INTO public.games VALUES (82, 102, 269, 269, '2024-05-17 07:04:59.474379');
INSERT INTO public.games VALUES (83, 102, 765, 766, '2024-05-17 07:04:59.566682');
INSERT INTO public.games VALUES (84, 11, 875, 10, '2024-05-17 07:05:35.740629');
INSERT INTO public.games VALUES (85, 104, 667, 668, '2024-05-17 07:05:49.739768');
INSERT INTO public.games VALUES (86, 104, 171, 172, '2024-05-17 07:05:49.810647');
INSERT INTO public.games VALUES (87, 105, 766, 767, '2024-05-17 07:05:49.930747');
INSERT INTO public.games VALUES (88, 105, 285, 286, '2024-05-17 07:05:50.016585');
INSERT INTO public.games VALUES (89, 104, 189, 192, '2024-05-17 07:05:50.086368');
INSERT INTO public.games VALUES (90, 104, 349, 349, '2024-05-17 07:05:50.176023');
INSERT INTO public.games VALUES (91, 104, 273, 274, '2024-05-17 07:05:50.257944');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (11, 'Jake');
INSERT INTO public.users VALUES (12, 'Elefante');
INSERT INTO public.users VALUES (13, 'Merlin');
INSERT INTO public.users VALUES (14, 'Cortex');
INSERT INTO public.users VALUES (22, 'Jaker');
INSERT INTO public.users VALUES (29, 'Marvin');
INSERT INTO public.users VALUES (30, 'Delphine');
INSERT INTO public.users VALUES (31, 'Prince Alou');
INSERT INTO public.users VALUES (34, 'user_1715924152071');
INSERT INTO public.users VALUES (35, 'user_1715924152070');
INSERT INTO public.users VALUES (36, 'Todd');
INSERT INTO public.users VALUES (37, 'user_1715925639452');
INSERT INTO public.users VALUES (38, 'user_1715925639451');
INSERT INTO public.users VALUES (39, 'user_1715925802182');
INSERT INTO public.users VALUES (40, 'user_1715925802181');
INSERT INTO public.users VALUES (41, 'Fast Eddy');
INSERT INTO public.users VALUES (42, 'user_1715925943936');
INSERT INTO public.users VALUES (43, 'user_1715925943935');
INSERT INTO public.users VALUES (44, 'user_1715925980934');
INSERT INTO public.users VALUES (45, 'user_1715925980933');
INSERT INTO public.users VALUES (46, 'Garfield');
INSERT INTO public.users VALUES (47, 'user_1715926099747');
INSERT INTO public.users VALUES (48, 'user_1715926099746');
INSERT INTO public.users VALUES (49, 'user_1715926263656');
INSERT INTO public.users VALUES (50, 'user_1715926263655');
INSERT INTO public.users VALUES (51, 'JAke');
INSERT INTO public.users VALUES (52, 'user_1715926395668');
INSERT INTO public.users VALUES (53, 'user_1715926395667');
INSERT INTO public.users VALUES (54, 'user_1715926563672');
INSERT INTO public.users VALUES (55, 'user_1715926563671');
INSERT INTO public.users VALUES (56, 'user_1715926646925');
INSERT INTO public.users VALUES (57, 'user_1715926646924');
INSERT INTO public.users VALUES (58, 'user_1715927605298');
INSERT INTO public.users VALUES (59, 'user_1715927605297');
INSERT INTO public.users VALUES (60, 'user_1715927695219');
INSERT INTO public.users VALUES (61, 'user_1715927695218');
INSERT INTO public.users VALUES (62, 'user_1715927714807');
INSERT INTO public.users VALUES (63, 'user_1715927714806');
INSERT INTO public.users VALUES (64, 'user_1715927822799');
INSERT INTO public.users VALUES (65, 'user_1715927822798');
INSERT INTO public.users VALUES (66, 'user_1715927923903');
INSERT INTO public.users VALUES (67, 'user_1715927923902');
INSERT INTO public.users VALUES (68, 'user_1715927928522');
INSERT INTO public.users VALUES (69, 'user_1715927928521');
INSERT INTO public.users VALUES (70, 'user_1715927966640');
INSERT INTO public.users VALUES (71, 'user_1715927966639');
INSERT INTO public.users VALUES (72, 'user_1715928088400');
INSERT INTO public.users VALUES (73, 'user_1715928088399');
INSERT INTO public.users VALUES (74, 'user_1715928160549');
INSERT INTO public.users VALUES (75, 'user_1715928160548');
INSERT INTO public.users VALUES (76, 'user_1715928198962');
INSERT INTO public.users VALUES (77, 'user_1715928198961');
INSERT INTO public.users VALUES (78, 'user_1715928275151');
INSERT INTO public.users VALUES (79, 'user_1715928275150');
INSERT INTO public.users VALUES (80, 'user_1715928363829');
INSERT INTO public.users VALUES (81, 'user_1715928363828');
INSERT INTO public.users VALUES (82, 'user_1715928455711');
INSERT INTO public.users VALUES (83, 'user_1715928455710');
INSERT INTO public.users VALUES (84, 'user_1715928665019');
INSERT INTO public.users VALUES (85, 'user_1715928665018');
INSERT INTO public.users VALUES (86, 'user_1715928717844');
INSERT INTO public.users VALUES (87, 'user_1715928717843');
INSERT INTO public.users VALUES (88, 'user_1715928746165');
INSERT INTO public.users VALUES (89, 'user_1715928746164');
INSERT INTO public.users VALUES (90, 'user_1715928797724');
INSERT INTO public.users VALUES (91, 'user_1715928797723');
INSERT INTO public.users VALUES (92, 'user_1715929242965');
INSERT INTO public.users VALUES (93, 'user_1715929242964');
INSERT INTO public.users VALUES (94, 'user_1715929273212');
INSERT INTO public.users VALUES (95, 'user_1715929273211');
INSERT INTO public.users VALUES (96, 'user_1715929315703');
INSERT INTO public.users VALUES (97, 'user_1715929315702');
INSERT INTO public.users VALUES (98, 'user_1715929387815');
INSERT INTO public.users VALUES (99, 'user_1715929387814');
INSERT INTO public.users VALUES (100, 'user_1715929454271');
INSERT INTO public.users VALUES (101, 'user_1715929454270');
INSERT INTO public.users VALUES (102, 'user_1715929498906');
INSERT INTO public.users VALUES (103, 'user_1715929498905');
INSERT INTO public.users VALUES (104, 'user_1715929549618');
INSERT INTO public.users VALUES (105, 'user_1715929549617');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 91, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 105, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

