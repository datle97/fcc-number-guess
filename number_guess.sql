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
    game_guesses integer NOT NULL,
    user_id integer NOT NULL
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
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer NOT NULL,
    username character varying(25),
    games_played integer,
    best_game integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(50) NOT NULL
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
-- Name: user_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (64, 448, 38);
INSERT INTO public.games VALUES (65, 525, 38);
INSERT INTO public.games VALUES (66, 983, 39);
INSERT INTO public.games VALUES (67, 769, 39);
INSERT INTO public.games VALUES (68, 398, 38);
INSERT INTO public.games VALUES (69, 283, 38);
INSERT INTO public.games VALUES (70, 518, 38);
INSERT INTO public.games VALUES (72, 52, 41);
INSERT INTO public.games VALUES (73, 340, 41);
INSERT INTO public.games VALUES (74, 733, 42);
INSERT INTO public.games VALUES (75, 703, 42);
INSERT INTO public.games VALUES (76, 44, 41);
INSERT INTO public.games VALUES (77, 789, 41);
INSERT INTO public.games VALUES (78, 112, 41);
INSERT INTO public.games VALUES (79, 441, 43);
INSERT INTO public.games VALUES (80, 700, 43);
INSERT INTO public.games VALUES (81, 49, 44);
INSERT INTO public.games VALUES (82, 283, 44);
INSERT INTO public.games VALUES (83, 435, 43);
INSERT INTO public.games VALUES (84, 9, 43);
INSERT INTO public.games VALUES (85, 877, 43);
INSERT INTO public.games VALUES (86, 808, 45);
INSERT INTO public.games VALUES (87, 596, 45);
INSERT INTO public.games VALUES (88, 685, 46);
INSERT INTO public.games VALUES (89, 972, 46);
INSERT INTO public.games VALUES (90, 38, 45);
INSERT INTO public.games VALUES (91, 691, 45);
INSERT INTO public.games VALUES (92, 180, 45);
INSERT INTO public.games VALUES (93, 139, 47);
INSERT INTO public.games VALUES (94, 283, 47);
INSERT INTO public.games VALUES (95, 950, 48);
INSERT INTO public.games VALUES (96, 579, 48);
INSERT INTO public.games VALUES (97, 657, 47);
INSERT INTO public.games VALUES (98, 213, 47);
INSERT INTO public.games VALUES (99, 940, 47);
INSERT INTO public.games VALUES (100, 185, 49);
INSERT INTO public.games VALUES (101, 109, 49);
INSERT INTO public.games VALUES (102, 481, 50);
INSERT INTO public.games VALUES (103, 299, 50);
INSERT INTO public.games VALUES (104, 918, 49);
INSERT INTO public.games VALUES (105, 31, 49);
INSERT INTO public.games VALUES (106, 396, 49);
INSERT INTO public.games VALUES (107, 896, 51);
INSERT INTO public.games VALUES (108, 475, 51);
INSERT INTO public.games VALUES (109, 945, 52);
INSERT INTO public.games VALUES (110, 533, 52);
INSERT INTO public.games VALUES (111, 767, 51);
INSERT INTO public.games VALUES (112, 79, 51);
INSERT INTO public.games VALUES (113, 345, 51);
INSERT INTO public.games VALUES (114, 435, 53);
INSERT INTO public.games VALUES (115, 232, 53);
INSERT INTO public.games VALUES (116, 417, 54);
INSERT INTO public.games VALUES (117, 65, 54);
INSERT INTO public.games VALUES (118, 638, 53);
INSERT INTO public.games VALUES (119, 77, 53);
INSERT INTO public.games VALUES (120, 564, 53);
INSERT INTO public.games VALUES (121, 534, 55);
INSERT INTO public.games VALUES (122, 565, 55);
INSERT INTO public.games VALUES (123, 871, 56);
INSERT INTO public.games VALUES (124, 577, 56);
INSERT INTO public.games VALUES (125, 458, 55);
INSERT INTO public.games VALUES (126, 175, 55);
INSERT INTO public.games VALUES (127, 885, 55);
INSERT INTO public.games VALUES (128, 315, 57);
INSERT INTO public.games VALUES (129, 444, 57);
INSERT INTO public.games VALUES (130, 548, 58);
INSERT INTO public.games VALUES (131, 160, 58);
INSERT INTO public.games VALUES (132, 430, 57);
INSERT INTO public.games VALUES (133, 922, 57);
INSERT INTO public.games VALUES (134, 738, 57);
INSERT INTO public.games VALUES (135, 211, 59);
INSERT INTO public.games VALUES (136, 81, 59);
INSERT INTO public.games VALUES (137, 65, 60);
INSERT INTO public.games VALUES (138, 920, 60);
INSERT INTO public.games VALUES (139, 291, 59);
INSERT INTO public.games VALUES (140, 253, 59);
INSERT INTO public.games VALUES (141, 822, 59);
INSERT INTO public.games VALUES (142, 983, 61);
INSERT INTO public.games VALUES (143, 44, 61);
INSERT INTO public.games VALUES (144, 708, 62);
INSERT INTO public.games VALUES (145, 730, 62);
INSERT INTO public.games VALUES (146, 6, 61);
INSERT INTO public.games VALUES (147, 579, 61);
INSERT INTO public.games VALUES (148, 479, 61);
INSERT INTO public.games VALUES (149, 173, 63);
INSERT INTO public.games VALUES (150, 184, 63);
INSERT INTO public.games VALUES (151, 515, 64);
INSERT INTO public.games VALUES (152, 914, 64);
INSERT INTO public.games VALUES (153, 664, 63);
INSERT INTO public.games VALUES (154, 306, 63);
INSERT INTO public.games VALUES (155, 588, 63);
INSERT INTO public.games VALUES (156, 286, 65);
INSERT INTO public.games VALUES (157, 83, 65);
INSERT INTO public.games VALUES (158, 209, 66);
INSERT INTO public.games VALUES (159, 99, 66);
INSERT INTO public.games VALUES (160, 335, 65);
INSERT INTO public.games VALUES (161, 951, 65);
INSERT INTO public.games VALUES (162, 371, 65);
INSERT INTO public.games VALUES (163, 137, 67);
INSERT INTO public.games VALUES (164, 88, 67);
INSERT INTO public.games VALUES (165, 310, 68);
INSERT INTO public.games VALUES (166, 55, 68);
INSERT INTO public.games VALUES (167, 321, 67);
INSERT INTO public.games VALUES (168, 867, 67);
INSERT INTO public.games VALUES (169, 63, 67);
INSERT INTO public.games VALUES (170, 745, 69);
INSERT INTO public.games VALUES (171, 799, 69);
INSERT INTO public.games VALUES (172, 417, 70);
INSERT INTO public.games VALUES (173, 295, 70);
INSERT INTO public.games VALUES (174, 847, 69);
INSERT INTO public.games VALUES (175, 800, 69);
INSERT INTO public.games VALUES (176, 360, 69);
INSERT INTO public.games VALUES (177, 519, 73);
INSERT INTO public.games VALUES (178, 642, 73);
INSERT INTO public.games VALUES (179, 889, 74);
INSERT INTO public.games VALUES (180, 797, 74);
INSERT INTO public.games VALUES (181, 314, 73);
INSERT INTO public.games VALUES (182, 527, 73);
INSERT INTO public.games VALUES (183, 34, 73);
INSERT INTO public.games VALUES (184, 13, 75);
INSERT INTO public.games VALUES (185, 1, 75);
INSERT INTO public.games VALUES (186, 855, 76);
INSERT INTO public.games VALUES (187, 19, 76);
INSERT INTO public.games VALUES (188, 442, 77);
INSERT INTO public.games VALUES (189, 595, 77);
INSERT INTO public.games VALUES (190, 866, 76);
INSERT INTO public.games VALUES (191, 848, 76);
INSERT INTO public.games VALUES (192, 301, 76);
INSERT INTO public.games VALUES (193, 245, 78);
INSERT INTO public.games VALUES (194, 464, 78);
INSERT INTO public.games VALUES (195, 263, 79);
INSERT INTO public.games VALUES (196, 452, 79);
INSERT INTO public.games VALUES (197, 617, 78);
INSERT INTO public.games VALUES (198, 987, 78);
INSERT INTO public.games VALUES (199, 545, 78);
INSERT INTO public.games VALUES (200, 464, 80);
INSERT INTO public.games VALUES (201, 381, 80);
INSERT INTO public.games VALUES (202, 965, 81);
INSERT INTO public.games VALUES (203, 309, 81);
INSERT INTO public.games VALUES (204, 502, 80);
INSERT INTO public.games VALUES (205, 351, 80);
INSERT INTO public.games VALUES (206, 289, 80);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (51, 'user_1662901434324', NULL, NULL);
INSERT INTO public.user_info VALUES (52, 'user_1662901434323', NULL, NULL);
INSERT INTO public.user_info VALUES (53, 'user_1662901438629', NULL, NULL);
INSERT INTO public.user_info VALUES (54, 'user_1662901438628', NULL, NULL);
INSERT INTO public.user_info VALUES (55, 'user_1662901472015', NULL, NULL);
INSERT INTO public.user_info VALUES (56, 'user_1662901472014', NULL, NULL);
INSERT INTO public.user_info VALUES (58, 'user_1662901492756', 1, 855);
INSERT INTO public.user_info VALUES (59, 'user_1662901492755', 1, 467);
INSERT INTO public.user_info VALUES (60, 'user_1662901656891', 1, 139);
INSERT INTO public.user_info VALUES (61, 'user_1662901656890', 1, 952);
INSERT INTO public.user_info VALUES (62, 'user_1662901660406', 1, 521);
INSERT INTO public.user_info VALUES (63, 'user_1662901660405', 1, 369);
INSERT INTO public.user_info VALUES (64, 'dAT', 1, 3);
INSERT INTO public.user_info VALUES (65, 'user_1662901683558', 1, 187);
INSERT INTO public.user_info VALUES (66, 'user_1662901683557', 1, 117);
INSERT INTO public.user_info VALUES (67, 'user_1662901685984', 1, 759);
INSERT INTO public.user_info VALUES (68, 'user_1662901685983', 1, 572);
INSERT INTO public.user_info VALUES (57, 'Dat', 5, 5);
INSERT INTO public.user_info VALUES (69, 'user_1662901915653', NULL, NULL);
INSERT INTO public.user_info VALUES (70, 'user_1662901915652', NULL, NULL);
INSERT INTO public.user_info VALUES (71, 'user_1662902073711', 1, 710);
INSERT INTO public.user_info VALUES (72, 'user_1662902073710', 1, 376);
INSERT INTO public.user_info VALUES (73, 'user_1662902163500', 1, 262);
INSERT INTO public.user_info VALUES (74, 'user_1662902163499', 1, 215);
INSERT INTO public.user_info VALUES (107, 'user_1662902265468', NULL, 585);
INSERT INTO public.user_info VALUES (106, 'user_1662902265469', NULL, 588);
INSERT INTO public.user_info VALUES (109, 'user_1662902269519', NULL, 192);
INSERT INTO public.user_info VALUES (108, 'user_1662902269520', NULL, 85);
INSERT INTO public.user_info VALUES (111, 'user_1662902315678', NULL, 297);
INSERT INTO public.user_info VALUES (110, 'user_1662902315679', NULL, 250);
INSERT INTO public.user_info VALUES (113, 'user_1662902326464', NULL, 450);
INSERT INTO public.user_info VALUES (112, 'user_1662902326465', NULL, 14);
INSERT INTO public.user_info VALUES (115, 'user_1662902334149', NULL, 462);
INSERT INTO public.user_info VALUES (114, 'user_1662902334150', NULL, 132);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (38, 'user_1659805760259');
INSERT INTO public.users VALUES (39, 'user_1659805760258');
INSERT INTO public.users VALUES (40, 'Frank');
INSERT INTO public.users VALUES (41, 'user_1659806161522');
INSERT INTO public.users VALUES (42, 'user_1659806161521');
INSERT INTO public.users VALUES (43, 'user_1659806197178');
INSERT INTO public.users VALUES (44, 'user_1659806197177');
INSERT INTO public.users VALUES (45, 'user_1659806217148');
INSERT INTO public.users VALUES (46, 'user_1659806217147');
INSERT INTO public.users VALUES (47, 'user_1659806239948');
INSERT INTO public.users VALUES (48, 'user_1659806239947');
INSERT INTO public.users VALUES (49, 'user_1659806265974');
INSERT INTO public.users VALUES (50, 'user_1659806265973');
INSERT INTO public.users VALUES (51, 'user_1659806275892');
INSERT INTO public.users VALUES (52, 'user_1659806275891');
INSERT INTO public.users VALUES (53, 'user_1659806302336');
INSERT INTO public.users VALUES (54, 'user_1659806302335');
INSERT INTO public.users VALUES (55, 'user_1659806307595');
INSERT INTO public.users VALUES (56, 'user_1659806307594');
INSERT INTO public.users VALUES (57, 'user_1659806402237');
INSERT INTO public.users VALUES (58, 'user_1659806402236');
INSERT INTO public.users VALUES (59, 'user_1659806500042');
INSERT INTO public.users VALUES (60, 'user_1659806500041');
INSERT INTO public.users VALUES (61, 'user_1659806505302');
INSERT INTO public.users VALUES (62, 'user_1659806505301');
INSERT INTO public.users VALUES (63, 'user_1659806524198');
INSERT INTO public.users VALUES (64, 'user_1659806524197');
INSERT INTO public.users VALUES (65, 'user_1659806529598');
INSERT INTO public.users VALUES (66, 'user_1659806529597');
INSERT INTO public.users VALUES (67, 'user_1659806533467');
INSERT INTO public.users VALUES (68, 'user_1659806533466');
INSERT INTO public.users VALUES (69, 'user_1659806536906');
INSERT INTO public.users VALUES (70, 'user_1659806536905');
INSERT INTO public.users VALUES (71, 'user_1662902574661');
INSERT INTO public.users VALUES (72, 'user_1662902574660');
INSERT INTO public.users VALUES (73, 'user_1662902592604');
INSERT INTO public.users VALUES (74, 'user_1662902592603');
INSERT INTO public.users VALUES (75, 'Dat');
INSERT INTO public.users VALUES (76, 'user_1662902742977');
INSERT INTO public.users VALUES (77, 'user_1662902742976');
INSERT INTO public.users VALUES (78, 'user_1662902779310');
INSERT INTO public.users VALUES (79, 'user_1662902779309');
INSERT INTO public.users VALUES (80, 'user_1662902783854');
INSERT INTO public.users VALUES (81, 'user_1662902783853');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 206, true);


--
-- Name: user_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_info_user_id_seq', 115, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 81, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


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

