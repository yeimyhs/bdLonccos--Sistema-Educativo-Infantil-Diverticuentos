--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.7

-- Started on 2021-08-20 12:54:49

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
-- TOC entry 218 (class 1259 OID 28859)
-- Name: Answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Answer" (
    "idAnswer" bigint NOT NULL,
    "comentAnswer" character varying(8192) NOT NULL,
    "stateAnswer" bigint,
    "dateCreationAnswer" timestamp with time zone NOT NULL,
    "idComment" bigint NOT NULL,
    "idUser" bigint NOT NULL
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Answer" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 28857)
-- Name: Answer_idAnswer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Answer_idAnswer_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Answer_idAnswer_seq" OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 217
-- Name: Answer_idAnswer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Answer_idAnswer_seq" OWNED BY public."Answer"."idAnswer";


--
-- TOC entry 211 (class 1259 OID 28823)
-- Name: Comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Comment" (
    "idComment" bigint NOT NULL,
    "idStory" bigint NOT NULL,
    "dateCreationComment" timestamp with time zone NOT NULL,
    "contentComment" character varying(8192) NOT NULL,
    "idUser" bigint NOT NULL,
    "stateComment" integer
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Comment" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 28821)
-- Name: Comment_idComment_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Comment_idComment_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Comment_idComment_seq" OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 210
-- Name: Comment_idComment_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Comment_idComment_seq" OWNED BY public."Comment"."idComment";


--
-- TOC entry 207 (class 1259 OID 28800)
-- Name: Dictionary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dictionary" (
    "wordDictionary" character varying(128) NOT NULL,
    "audioDictionary" bytea,
    "idDictionary" bigint NOT NULL,
    "traslateDictionary" character varying(128) NOT NULL,
    "pronunciationDictionary" character varying(128) NOT NULL,
    "descriptionDictionary" character varying(256) NOT NULL,
    "idExamplesDictionary" bigint,
    "resourceDictionary" character varying(256)
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Dictionary" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 28798)
-- Name: Dictionary_idDictionary_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Dictionary_idDictionary_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dictionary_idDictionary_seq" OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 206
-- Name: Dictionary_idDictionary_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Dictionary_idDictionary_seq" OWNED BY public."Dictionary"."idDictionary";


--
-- TOC entry 214 (class 1259 OID 28843)
-- Name: ExamplesDictionay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExamplesDictionay" (
    "idExamplesDictionay" bigint NOT NULL,
    "sentencesExamplesDictionay" bit varying(256) NOT NULL
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."ExamplesDictionay" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 28812)
-- Name: Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Group" (
    "idGroup" bigint NOT NULL,
    "imageCoverGroup" bytea,
    "nameGroup" character varying(128) NOT NULL,
    "descriptionGroup" character varying(256) NOT NULL,
    "stateGroup" integer,
    "typeGroup" integer,
    "dateCreationGroup" timestamp with time zone
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Group" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 28810)
-- Name: Group_idGroup_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Group_idGroup_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Group_idGroup_seq" OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 208
-- Name: Group_idGroup_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Group_idGroup_seq" OWNED BY public."Group"."idGroup";


--
-- TOC entry 220 (class 1259 OID 28871)
-- Name: History; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."History" (
    "idHistory" bigint NOT NULL,
    "dateModificationHistory" timestamp with time zone NOT NULL,
    "contentStringHistory" text NOT NULL,
    "idStory" bigint NOT NULL
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."History" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 28869)
-- Name: History_idHistory_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."History_idHistory_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."History_idHistory_seq" OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 219
-- Name: History_idHistory_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."History_idHistory_seq" OWNED BY public."History"."idHistory";


--
-- TOC entry 216 (class 1259 OID 28850)
-- Name: Preference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Preference" (
    "questionPreference" character varying(256) NOT NULL,
    "answerPreference" character varying(128),
    "idPreference" bigint NOT NULL,
    "idStory" bigint NOT NULL
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Preference" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 28848)
-- Name: Preference_idPreference_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Preference_idPreference_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Preference_idPreference_seq" OWNER TO postgres;

--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 215
-- Name: Preference_idPreference_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Preference_idPreference_seq" OWNED BY public."Preference"."idPreference";


--
-- TOC entry 212 (class 1259 OID 28833)
-- Name: ReadingList; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ReadingList" (
    "idUser" bigint NOT NULL,
    "idStory" bigint NOT NULL,
    "dateCreationReadingList" bigint NOT NULL,
    "nameReadingList" bigint NOT NULL
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."ReadingList" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 28787)
-- Name: Story; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Story" (
    "idStory" bigint NOT NULL,
    "idUser" bigint,
    "idGroup" bigint,
    "titleStory" character varying(128) NOT NULL,
    "descriptionStory" character varying(2048) NOT NULL,
    "imageCoverStory" bytea,
    "likesStory" integer,
    "contentStringStory" text NOT NULL,
    "dateCreationStory" timestamp with time zone NOT NULL,
    "stateStory" integer
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Story" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 28785)
-- Name: Story_idStory_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Story_idStory_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Story_idStory_seq" OWNER TO postgres;

--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 204
-- Name: Story_idStory_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Story_idStory_seq" OWNED BY public."Story"."idStory";


--
-- TOC entry 222 (class 1259 OID 28883)
-- Name: Suggestion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Suggestion" (
    "idSuggestion" bigint NOT NULL,
    "Suggestion" text
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."Suggestion" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 28881)
-- Name: Suggestion_idSuggestion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Suggestion_idSuggestion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Suggestion_idSuggestion_seq" OWNER TO postgres;

--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 221
-- Name: Suggestion_idSuggestion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Suggestion_idSuggestion_seq" OWNED BY public."Suggestion"."idSuggestion";


--
-- TOC entry 203 (class 1259 OID 28776)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "idUser" bigint NOT NULL,
    "emailUser" character varying NOT NULL,
    "passwordUser" character varying(64) NOT NULL,
    "firstnameUser" character varying(128) NOT NULL,
    "lastnameUser" character varying(128),
    "imageCoverUser" bytea,
    "countryUser" character varying(512),
    "phoneUser" integer,
    "usernameUser" character varying(128) NOT NULL,
    "adressUser" character varying(512),
    "cityUser" character varying(512),
    "stateUser" integer,
    "dateCreationUser" timestamp with time zone NOT NULL
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 28838)
-- Name: UserGroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserGroup" (
    "idUser" bigint NOT NULL,
    "idGroup" bigint NOT NULL,
    "stateRequestUserGroup" integer NOT NULL,
    "rolUserGroup" integer NOT NULL,
    "dateUserGroup" timestamp with time zone
)
WITH (autovacuum_enabled='true');


ALTER TABLE public."UserGroup" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 28774)
-- Name: User_idUser_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_idUser_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_idUser_seq" OWNER TO postgres;

--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 202
-- Name: User_idUser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_idUser_seq" OWNED BY public."User"."idUser";


--
-- TOC entry 230 (class 1259 OID 28974)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 28972)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 232 (class 1259 OID 28984)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 28982)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 228 (class 1259 OID 28966)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 28964)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 234 (class 1259 OID 28992)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 29002)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 29000)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 235
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 233 (class 1259 OID 28990)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 233
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 238 (class 1259 OID 29010)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 29008)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 237
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 243 (class 1259 OID 29144)
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 29070)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 29068)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 239
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 226 (class 1259 OID 28956)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 28954)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 224 (class 1259 OID 28945)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 28943)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 223
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 241 (class 1259 OID 29101)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 29123)
-- Name: knox_authtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knox_authtoken (
    digest character varying(128) NOT NULL,
    salt character varying(16) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    expiry timestamp with time zone,
    token_key character varying(8) NOT NULL
);


ALTER TABLE public.knox_authtoken OWNER TO postgres;

--
-- TOC entry 2831 (class 2604 OID 28862)
-- Name: Answer idAnswer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Answer" ALTER COLUMN "idAnswer" SET DEFAULT nextval('public."Answer_idAnswer_seq"'::regclass);


--
-- TOC entry 2829 (class 2604 OID 28826)
-- Name: Comment idComment; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comment" ALTER COLUMN "idComment" SET DEFAULT nextval('public."Comment_idComment_seq"'::regclass);


--
-- TOC entry 2827 (class 2604 OID 28803)
-- Name: Dictionary idDictionary; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionary" ALTER COLUMN "idDictionary" SET DEFAULT nextval('public."Dictionary_idDictionary_seq"'::regclass);


--
-- TOC entry 2828 (class 2604 OID 28815)
-- Name: Group idGroup; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group" ALTER COLUMN "idGroup" SET DEFAULT nextval('public."Group_idGroup_seq"'::regclass);


--
-- TOC entry 2832 (class 2604 OID 28874)
-- Name: History idHistory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."History" ALTER COLUMN "idHistory" SET DEFAULT nextval('public."History_idHistory_seq"'::regclass);


--
-- TOC entry 2830 (class 2604 OID 28853)
-- Name: Preference idPreference; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Preference" ALTER COLUMN "idPreference" SET DEFAULT nextval('public."Preference_idPreference_seq"'::regclass);


--
-- TOC entry 2826 (class 2604 OID 28790)
-- Name: Story idStory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Story" ALTER COLUMN "idStory" SET DEFAULT nextval('public."Story_idStory_seq"'::regclass);


--
-- TOC entry 2833 (class 2604 OID 28886)
-- Name: Suggestion idSuggestion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Suggestion" ALTER COLUMN "idSuggestion" SET DEFAULT nextval('public."Suggestion_idSuggestion_seq"'::regclass);


--
-- TOC entry 2825 (class 2604 OID 28779)
-- Name: User idUser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN "idUser" SET DEFAULT nextval('public."User_idUser_seq"'::regclass);


--
-- TOC entry 2837 (class 2604 OID 28977)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2838 (class 2604 OID 28987)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2836 (class 2604 OID 28969)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2839 (class 2604 OID 28995)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2840 (class 2604 OID 29005)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2841 (class 2604 OID 29013)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2842 (class 2604 OID 29073)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2835 (class 2604 OID 28959)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 28948)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3099 (class 0 OID 28859)
-- Dependencies: 218
-- Data for Name: Answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Answer" ("idAnswer", "comentAnswer", "stateAnswer", "dateCreationAnswer", "idComment", "idUser") FROM stdin;
\.


--
-- TOC entry 3092 (class 0 OID 28823)
-- Dependencies: 211
-- Data for Name: Comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Comment" ("idComment", "idStory", "dateCreationComment", "contentComment", "idUser", "stateComment") FROM stdin;
1	2	2021-07-25 13:19:00+00	Me gusto muchisimo	3	1
4	2	2021-07-09 13:49:00+00	Muy reflexivo ,Saludos!	2	1
2	2	2021-07-25 13:52:00+00	Buen cuento, queria decirles que los leo desde Peru!	3	1
\.


--
-- TOC entry 3088 (class 0 OID 28800)
-- Dependencies: 207
-- Data for Name: Dictionary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Dictionary" ("wordDictionary", "audioDictionary", "idDictionary", "traslateDictionary", "pronunciationDictionary", "descriptionDictionary", "idExamplesDictionary", "resourceDictionary") FROM stdin;
\.


--
-- TOC entry 3095 (class 0 OID 28843)
-- Dependencies: 214
-- Data for Name: ExamplesDictionay; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamplesDictionay" ("idExamplesDictionay", "sentencesExamplesDictionay") FROM stdin;
\.


--
-- TOC entry 3090 (class 0 OID 28812)
-- Dependencies: 209
-- Data for Name: Group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Group" ("idGroup", "imageCoverGroup", "nameGroup", "descriptionGroup", "stateGroup", "typeGroup", "dateCreationGroup") FROM stdin;
2	\N	Diverticuentos comunity	Crea diviertete y aprende	0	1	2021-07-05 12:28:00+00
4	\N	another comunity	another description	1	2	2021-07-08 12:29:00+00
3	\N	another more comunity	not the same description	1	2	2021-07-25 12:34:00+00
\.


--
-- TOC entry 3101 (class 0 OID 28871)
-- Dependencies: 220
-- Data for Name: History; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."History" ("idHistory", "dateModificationHistory", "contentStringHistory", "idStory") FROM stdin;
\.


--
-- TOC entry 3097 (class 0 OID 28850)
-- Dependencies: 216
-- Data for Name: Preference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Preference" ("questionPreference", "answerPreference", "idPreference", "idStory") FROM stdin;
\.


--
-- TOC entry 3093 (class 0 OID 28833)
-- Dependencies: 212
-- Data for Name: ReadingList; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ReadingList" ("idUser", "idStory", "dateCreationReadingList", "nameReadingList") FROM stdin;
\.


--
-- TOC entry 3086 (class 0 OID 28787)
-- Dependencies: 205
-- Data for Name: Story; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Story" ("idStory", "idUser", "idGroup", "titleStory", "descriptionStory", "imageCoverStory", "likesStory", "contentStringStory", "dateCreationStory", "stateStory") FROM stdin;
2	2	2	El avaro y el oro	Habia una vez...Una descripcion atractiva	\N	17	En una granja ... Un cuento bonito	2021-07-23 12:56:00+00	1
1	2	2	El siervo y el lobo	Una descripcion atractiva	\N	10	Un cuento bonito	2021-07-25 13:01:00+00	1
\.


--
-- TOC entry 3103 (class 0 OID 28883)
-- Dependencies: 222
-- Data for Name: Suggestion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Suggestion" ("idSuggestion", "Suggestion") FROM stdin;
\.


--
-- TOC entry 3084 (class 0 OID 28776)
-- Dependencies: 203
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("idUser", "emailUser", "passwordUser", "firstnameUser", "lastnameUser", "imageCoverUser", "countryUser", "phoneUser", "usernameUser", "adressUser", "cityUser", "stateUser", "dateCreationUser") FROM stdin;
3	divertiuser@gmail.com	usu	usuname	usulast	\N	Perú	\N	divertiuser	divertiuserplace	Arequipa	\N	2021-07-25 08:14:00+00
2	yhuancas@unsa.edu.pe	yei	yeimy	Huanca	\N	peru	933203060	yei	socabaya	Arequipa	1	2021-07-25 11:54:00+00
33				\N	\N	\N	\N		\N	\N	\N	2021-08-02 19:27:06.504137+00
34				\N	\N	\N	\N		\N	\N	\N	2021-08-02 19:34:43.430058+00
35				\N	\N	\N	\N		\N	\N	\N	2021-08-02 20:04:55.039439+00
36				\N	\N	\N	\N		\N	\N	\N	2021-08-02 20:06:42.241798+00
37				\N	\N	\N	\N		\N	\N	\N	2021-08-02 20:08:08.688461+00
38				\N	\N	\N	\N		\N	\N	\N	2021-08-02 20:39:05.531084+00
39				\N	\N	\N	\N		\N	\N	\N	2021-08-02 20:47:42.443296+00
\.


--
-- TOC entry 3094 (class 0 OID 28838)
-- Dependencies: 213
-- Data for Name: UserGroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserGroup" ("idUser", "idGroup", "stateRequestUserGroup", "rolUserGroup", "dateUserGroup") FROM stdin;
\.


--
-- TOC entry 3111 (class 0 OID 28974)
-- Dependencies: 230
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3113 (class 0 OID 28984)
-- Dependencies: 232
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3109 (class 0 OID 28966)
-- Dependencies: 228
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
25	Can add answer	7	add_answer
26	Can change answer	7	change_answer
27	Can delete answer	7	delete_answer
28	Can view answer	7	view_answer
29	Can add comment	8	add_comment
30	Can change comment	8	change_comment
31	Can delete comment	8	delete_comment
32	Can view comment	8	view_comment
33	Can add dictionary	9	add_dictionary
34	Can change dictionary	9	change_dictionary
35	Can delete dictionary	9	delete_dictionary
36	Can view dictionary	9	view_dictionary
37	Can add examplesdictionay	10	add_examplesdictionay
38	Can change examplesdictionay	10	change_examplesdictionay
39	Can delete examplesdictionay	10	delete_examplesdictionay
40	Can view examplesdictionay	10	view_examplesdictionay
41	Can add group	11	add_group
42	Can change group	11	change_group
43	Can delete group	11	delete_group
44	Can view group	11	view_group
45	Can add history	12	add_history
46	Can change history	12	change_history
47	Can delete history	12	delete_history
48	Can view history	12	view_history
49	Can add preference	13	add_preference
50	Can change preference	13	change_preference
51	Can delete preference	13	delete_preference
52	Can view preference	13	view_preference
53	Can add story	14	add_story
54	Can change story	14	change_story
55	Can delete story	14	delete_story
56	Can view story	14	view_story
57	Can add suggestion	15	add_suggestion
58	Can change suggestion	15	change_suggestion
59	Can delete suggestion	15	delete_suggestion
60	Can view suggestion	15	view_suggestion
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
65	Can add readinglist	17	add_readinglist
66	Can change readinglist	17	change_readinglist
67	Can delete readinglist	17	delete_readinglist
68	Can view readinglist	17	view_readinglist
69	Can add usergroup	18	add_usergroup
70	Can change usergroup	18	change_usergroup
71	Can delete usergroup	18	delete_usergroup
72	Can view usergroup	18	view_usergroup
73	Can add user p	19	add_userp
74	Can change user p	19	change_userp
75	Can delete user p	19	delete_userp
76	Can view user p	19	view_userp
77	Can add auth token	20	add_authtoken
78	Can change auth token	20	change_authtoken
79	Can delete auth token	20	delete_authtoken
80	Can view auth token	20	view_authtoken
81	Can add Token	21	add_token
82	Can change Token	21	change_token
83	Can delete Token	21	delete_token
84	Can view Token	21	view_token
85	Can add token	22	add_tokenproxy
86	Can change token	22	change_tokenproxy
87	Can delete token	22	delete_tokenproxy
88	Can view token	22	view_tokenproxy
\.


--
-- TOC entry 3115 (class 0 OID 28992)
-- Dependencies: 234
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
33	pbkdf2_sha256$260000$Y93BF4jlzL9zKE3ab88ssP$JVKed1IIz1rMzTsPI+RC64jSzhF4daTjOzPIQdyW9qg=	\N	f	karolx1321			karolx1321@gmail.com	f	t	2021-08-02 19:27:06.325352+00
2	pbkdf2_sha256$260000$3eyPBbTt9qOME8LXabUSJl$uEW4Xbjsn7dTpXgcrHd337Aunt2dQFWqX33WMjVNM9c=	\N	f	jk			jk@jk.jk	f	t	2021-07-28 14:43:05.58971+00
3	pbkdf2_sha256$260000$bOH8RV0WwHFnM4VhCMHdJZ$MxnxJlAdOIYXUMwbq5HQYVm61vj9pOi86aztI7VHdI8=	\N	f	postgres			Andres@gmail.com	f	t	2021-07-28 14:59:50.876881+00
4	pbkdf2_sha256$260000$S6hydpkGtkZkPXjp2BjgsJ$6SYCnwUzKTuE3OHNikU2n/IXA2kS47ECHim0qoPp7os=	\N	f	Andrea			Andrea@gmail.com	f	t	2021-07-28 15:01:33.355845+00
5	pbkdf2_sha256$260000$WQmHfGmUBHG4G5MUwPF3eD$ogNCCHv2cQHKS29umeKRTVUDNqneS5YbkV7o5NNG0m4=	\N	f	fbrtt			xhs@gmail.com	f	t	2021-07-28 15:03:53.436581+00
6	pbkdf2_sha256$260000$AK8vlCksaBwEZHaLl3MA3h$b8Xe1DAGq9fZl2GETLmjt1ZG3kyAJOf/7+xk/hlOQ1s=	\N	f	user			user@user.user.com	f	t	2021-07-28 15:06:23.108086+00
7	pbkdf2_sha256$260000$wb6HI7qb0cIG4DhkXcVILJ$7VHSKBeRknLXryn9XMR/NLVAK736i0QpvE50YhnTvAo=	\N	f	user2			user@user.user.com	f	t	2021-07-28 15:07:07.29781+00
8	pbkdf2_sha256$260000$Udd9sphBWfhewzFs6YsjUW$UlpexalwtwGhbFQIYWdfdl+lbbKV1abYWy1jdRta+2I=	\N	f	ferb			ferb@gmail.com	f	t	2021-07-28 15:27:33.108654+00
9	pbkdf2_sha256$260000$vS427bTpmo0CQPcflDWM9m$gvHxxqJEQTfwt7elYFR+QzlNS4JpuFUyOCCKaoPCp+E=	\N	f	ferb2			ferb2@gmail.com	f	t	2021-07-28 15:29:38.543222+00
10	pbkdf2_sha256$260000$qcRXjLWzVK22m6RZ2GrZ7g$nupj0JhCzIC5NZElDE29F+bEmcHhjmgHuOk28zG+7+M=	\N	f	ferb23			ferb23@gmail.com	f	t	2021-07-28 15:30:34.10862+00
11	pbkdf2_sha256$260000$Bf7A4VkJnYeV2M9IcxS9dP$4AVWQ4ho6zCAINpZ+QJeKf5zy0wgkEV72ReUwLJT35M=	\N	f	yeimyhs2			user@user.user.com	f	t	2021-07-28 15:31:23.603971+00
12	pbkdf2_sha256$260000$IO2SaAQbyFQIwyeULi1ubN$7vvjeXHTZa4/KZFw15mdx7pK2P3zBdR/egwMaWLWIdc=	\N	f	yeimyhs23			use0r@user.user.com	f	t	2021-07-28 15:32:27.033973+00
13	pbkdf2_sha256$260000$lHk28YZsOCPOApicwE7GJt$6XRhywDVMP2MeTYWGQh0btuy0GuU7qUh1sLFfcrr2kM=	\N	f	yeimyhs234			use02r@user.user.com	f	t	2021-07-28 15:33:23.708346+00
35	pbkdf2_sha256$260000$tUhkNohcTXOnQeBNtbCamc$whUrUHSZEYKaQ2zv7g2nBk0wI0KL18bnOqkbFpVtQkI=	\N	f	karolx132145			karolx132145@gmail.com	f	t	2021-08-02 20:04:54.897804+00
14	pbkdf2_sha256$260000$spvtGScMTNXrrSu4nI4JAl$dkUDoBrFYHXfEepDgQzxtsZabpxX0mWPWLn8MnB9wgI=	\N	f	richar			user@user.user.com	f	t	2021-08-02 04:16:54.767875+00
15	pbkdf2_sha256$260000$xH2ZN4BvURaAmVzqHonAic$Jtopsu4d6mXHVBXHACHqOwqPFYDdd66Bi004tEGbyzk=	\N	f	yeomy			use02y@user.user.com	f	t	2021-08-02 04:23:51.428427+00
16	pbkdf2_sha256$260000$0iAULwPJTgNvrGNxYkVLkI$PvbpSlDlGJYcKOPvLqD117q0LBezXAuYwH7CTzX9M+Q=	\N	f	yeomy1			use02y@user.user.com	f	t	2021-08-02 04:31:43.395814+00
17	pbkdf2_sha256$260000$iaTbCaGQRc4VwfDnFw1eF0$p2ZP50f2XkTnGucJZNSZoaZn48xy49gL8NkoksLC5Jc=	\N	f	yeomy12			use02y@user.user.com	f	t	2021-08-02 04:38:01.922163+00
18	pbkdf2_sha256$260000$rI5bbF9kkytN9z1bjuIUFo$cYPkA27msJyK32vimEXY1dWACvNGmowfZrh1UEZCDWc=	\N	f	yeomy123			use02y@user.user.com	f	t	2021-08-02 05:07:51.774758+00
19	pbkdf2_sha256$260000$jbnXwPiL95Qur6hSbsapIY$+mpN+EFnQcaK0jmakBEUs+AYf/X+CcDEfHEOPCL0rmQ=	\N	f	yeomy1234			use02y@user.user.com	f	t	2021-08-02 05:09:26.298951+00
20	pbkdf2_sha256$260000$7SyrFDLrqZPtCWMEgKY7Hb$kR3MPqevh6jSgZ2m7cjlS2Zy03JoxJytpD+nYNdnzWM=	\N	f	yeomy12345			use02y@user.user.com	f	t	2021-08-02 05:12:07.20667+00
21	pbkdf2_sha256$260000$UAv0hmqxqSYSP4OTjkvePr$M/ua7y6hK6wIK0dYRTa1mejSFK1Wuf0uUlEHlcAC83w=	\N	f	yeomy15			use02y@user.user.com	f	t	2021-08-02 05:14:46.696569+00
22	pbkdf2_sha256$260000$gCpE7bFswkGJJyB37Br9Pp$rjWEGfpf2awk9AKciM1LDtEI/xwkfgz8fba0xZNLQcQ=	\N	f	yeomy16			use02y@user.user.com	f	t	2021-08-02 05:15:09.752359+00
23	pbkdf2_sha256$260000$af6Niq0BWi2SXk6pPH6n2F$4/pWXh8va4Qo9kgl+n04VeJGMrp+iIISouAO0Cj6eP0=	\N	f	yeomy17			use02y@user.user.com	f	t	2021-08-02 05:16:32.50172+00
25	pbkdf2_sha256$260000$Hs4C6zFPju5owY6xEmpApx$x4QJ8FPl56+ptbPoRDWd2fOE4WLS0zDLPYLRgMVwP24=	\N	f	yeo			use02y@user.user.com	f	t	2021-08-02 05:17:14.973773+00
26	pbkdf2_sha256$260000$znllVI5t8ZaKWrDbxsEtFH$gMQl1CBbhZPT1JjUt/I07ehdDb6Vpdj3jI6vfQlO5FI=	\N	f	yeo17			use02y@user.user.com	f	t	2021-08-02 05:17:36.499511+00
27	pbkdf2_sha256$260000$EKGj5Bqo0zlbAkIGghsycV$Xri4hQK2mgdNkbxQ84g89fJz9XNITtQmWPMHHDY2Gg8=	\N	f	yeo18			use02y@user.user.com	f	t	2021-08-02 05:17:56.808598+00
28	pbkdf2_sha256$260000$8XdYrzfCk61TMq83c6VZDl$rW6wDtowBRyB58X3hK3MltM6spPmaQYv2RUuGCu9Ue0=	\N	f	yeo19			use02y@user.user.com	f	t	2021-08-02 05:19:27.8738+00
36	pbkdf2_sha256$260000$h9ITLKRVx581pmMa5AQDp4$POGr9g5z1JhMuuotsZh7AYy4qOopVqdcVvMMtyXdYnA=	\N	f	karolx1321456			karolx1321456@gmail.com	f	t	2021-08-02 20:06:42.102217+00
37	pbkdf2_sha256$260000$Uo4s0onWEvZSqVQCDJ010F$H5KeGlsVcofahO4r4WyXjMYyHBv21uLO0G0YyzmPw3A=	\N	f	karox1321456			karox1321456@gmail.com	f	t	2021-08-02 20:08:08.548849+00
38	pbkdf2_sha256$260000$brMvDM48O58BaftugoJCIi$2+u1AxO36tt46zA3iBFqQKqYXS6EM5OtrMPeoeJYeVA=	\N	f	usui			usui@gmail.com	f	t	2021-08-02 20:39:05.39475+00
39	pbkdf2_sha256$260000$tLFeGkgjlhGkzJk2VJTNzn$Kfx1gYK3ijjFh8WUxBozT2lIo7KZpFaoZFcdpaVd0Kw=	\N	f	usui1			usui1@gmail.com	f	t	2021-08-02 20:47:42.302677+00
29	pbkdf2_sha256$260000$A92mw4TCquh2bmQAzT271V$ibnmJeASzm2vKYpp1OZ2SvLj0VznPUWVCpXob6JELG8=	\N	f	karolx			karolx@gmail.com	f	t	2021-08-02 19:12:23.617156+00
30	pbkdf2_sha256$260000$3yz1orOnP6ZIZcxCQlTLdf$ZMjwKUjBIanMu4hdZGtbSEUjsxAV1ImWym+s44X48+w=	\N	f	karolx1			karolx1@gmail.com	f	t	2021-08-02 19:14:09.679691+00
31	pbkdf2_sha256$260000$eM3AeoohXjLMXOdowQ2hqk$O18IGllpabD3uIO3mHnaGUtBONRZo4RgTiXQ+oZVTi0=	\N	f	karolx11			karolx11@gmail.com	f	t	2021-08-02 19:15:04.81498+00
32	pbkdf2_sha256$260000$f0I0Al6ydaWkRNtmkBdzpt$MWCMfeZY6c6VSeecAA29cnOliQwJU/BMSXQRu82aYZs=	\N	f	karolx121			karolx121@gmail.com	f	t	2021-08-02 19:26:02.340277+00
34	pbkdf2_sha256$260000$CfRjdYsovoEBrDeZpzAKa5$pU1Uh0BSokEnYnKozGsjnLQOXB7WInltyhNDvwdNQDo=	2021-08-02 20:13:04.772939+00	f	karolx13214			karolx13214@gmail.com	f	t	2021-08-02 19:34:43.253897+00
1	pbkdf2_sha256$260000$nyTtd4nNmNNHn4zoMzZkRd$TNcodThCn9DM+vcQLKYzIUZeXt6cqH7ZRoAC1Bqqm8I=	2021-08-02 20:26:02.6918+00	t	yeimy			yeimy@gmail.com	t	t	2021-07-28 14:37:05.623771+00
\.


--
-- TOC entry 3117 (class 0 OID 29002)
-- Dependencies: 236
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3119 (class 0 OID 29010)
-- Dependencies: 238
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3124 (class 0 OID 29144)
-- Dependencies: 243
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
56a5f932ef2233660d40ea1ade0f04d1fdeb3bd3	2021-07-28 16:27:09.150108+00	1
\.


--
-- TOC entry 3121 (class 0 OID 29070)
-- Dependencies: 240
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3107 (class 0 OID 28956)
-- Dependencies: 226
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	DivertiCuentos	answer
8	DivertiCuentos	comment
9	DivertiCuentos	dictionary
10	DivertiCuentos	examplesdictionay
11	DivertiCuentos	group
12	DivertiCuentos	history
13	DivertiCuentos	preference
14	DivertiCuentos	story
15	DivertiCuentos	suggestion
16	DivertiCuentos	user
17	DivertiCuentos	readinglist
18	DivertiCuentos	usergroup
19	DivertiCuentos	userp
20	knox	authtoken
21	authtoken	token
22	authtoken	tokenproxy
\.


--
-- TOC entry 3105 (class 0 OID 28945)
-- Dependencies: 224
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	DivertiCuentos	0001_initial	2021-07-25 04:55:12.077527+00
2	contenttypes	0001_initial	2021-07-25 04:55:12.095474+00
3	auth	0001_initial	2021-07-25 04:55:12.159485+00
4	admin	0001_initial	2021-07-25 04:55:12.190115+00
5	admin	0002_logentry_remove_auto_add	2021-07-25 04:55:12.198094+00
6	admin	0003_logentry_add_action_flag_choices	2021-07-25 04:55:12.204079+00
7	contenttypes	0002_remove_content_type_name	2021-07-25 04:55:12.227052+00
8	auth	0002_alter_permission_name_max_length	2021-07-25 04:55:12.235993+00
9	auth	0003_alter_user_email_max_length	2021-07-25 04:55:12.244968+00
10	auth	0004_alter_user_username_opts	2021-07-25 04:55:12.252978+00
11	auth	0005_alter_user_last_login_null	2021-07-25 04:55:12.258959+00
12	auth	0006_require_contenttypes_0002	2021-07-25 04:55:12.261923+00
13	auth	0007_alter_validators_add_error_messages	2021-07-25 04:55:12.270899+00
14	auth	0008_alter_user_username_max_length	2021-07-25 04:55:12.287854+00
15	auth	0009_alter_user_last_name_max_length	2021-07-25 04:55:12.295832+00
16	auth	0010_alter_group_name_max_length	2021-07-25 04:55:12.304808+00
17	auth	0011_update_proxy_permissions	2021-07-25 04:55:12.317774+00
18	auth	0012_alter_user_first_name_max_length	2021-07-25 04:55:12.324756+00
19	sessions	0001_initial	2021-07-25 04:55:12.339715+00
20	DivertiCuentos	0002_auto_20210728_0807	2021-07-28 13:07:21.795508+00
21	knox	0001_initial	2021-07-28 14:13:30.828412+00
22	knox	0002_auto_20150916_1425	2021-07-28 14:13:30.871724+00
23	knox	0003_auto_20150916_1526	2021-07-28 14:13:30.893634+00
24	knox	0004_authtoken_expires	2021-07-28 14:13:30.904606+00
25	knox	0005_authtoken_token_key	2021-07-28 14:13:30.920406+00
26	knox	0006_auto_20160818_0932	2021-07-28 14:13:30.956122+00
27	knox	0007_auto_20190111_0542	2021-07-28 14:13:30.967063+00
28	authtoken	0001_initial	2021-07-28 16:26:16.987757+00
29	authtoken	0002_auto_20160226_1747	2021-07-28 16:26:17.015881+00
30	authtoken	0003_tokenproxy	2021-07-28 16:26:17.018872+00
31	DivertiCuentos	0002_alter_userp_table	2021-07-28 16:26:36.752136+00
\.


--
-- TOC entry 3122 (class 0 OID 29101)
-- Dependencies: 241
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
76ta7zbgq2vthdxahq27qu89nimgol4a	.eJxVjDsOwjAQBe_iGln-xjYlPWew1rsbHECOFCcV4u4QKQW0b2beS2TY1pq3zkueSJyFFqffrQA-uO2A7tBus8S5rctU5K7Ig3Z5nYmfl8P9O6jQ67dGi9YZo8GOTOBKROPAe1Lkh3EACqFwhIQUolI-lRAUEQRlIGnPFsX7A_hwOFQ:1m8ljV:KdChFwxcDo1GcZM3LnkuEv2QC19rBM2WJY07boZqAOA	2021-08-11 15:44:33.822829+00
njxceqn8bb4dbv0ijzk6bwj02clf0oj8	.eJxVjEsOwiAUAO_C2hDg8XXpvmcgwHuVqqFJaVfGuxuSLnQ7M5k3i-nYazw6bXFBdmWg2eUX5lSe1IbBR2r3lZe17duS-Uj4aTufVqTX7Wz_BjX1Or7OFyGN1OAzgJyDBjIzOCtQpKSdt1mHrMCTMko7FcgGRSUrK1ESFvb5AtEONxg:1mAeGd:LA7JAr4j6o7tPoAGaHPoSBvcn-rSIgeIboOGF_0WWFk	2021-08-16 20:10:31.766268+00
8yg66u1fro4jyml8f9lh26zfkmq4nwjb	.eJxVjDsOwjAQBe_iGln-xjYlPWew1rsbHECOFCcV4u4QKQW0b2beS2TY1pq3zkueSJyFFqffrQA-uO2A7tBus8S5rctU5K7Ig3Z5nYmfl8P9O6jQ67dGi9YZo8GOTOBKROPAe1Lkh3EACqFwhIQUolI-lRAUEQRlIGnPFsX7A_hwOFQ:1mAeKo:mKxRP6-U8KFaClL24GHLcWhR9jg7TEmCBUNAs4cwtCU	2021-08-16 20:14:50.382778+00
\.


--
-- TOC entry 3123 (class 0 OID 29123)
-- Dependencies: 242
-- Data for Name: knox_authtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knox_authtoken (digest, salt, created, user_id, expiry, token_key) FROM stdin;
5838fbbd196f463d1817078150b5684949f242874244764590a51242a1bd52a368d0e653925f643b684f2d9e5a02e5e900f14ee52fec203d6ca03232f58d4369	f61f14f12005fecd	2021-07-28 14:43:05.922898+00	2	2021-07-29 00:43:05.922898+00	e5ea0804
5c0a2ae67f15eff4d9e876db4a172ddb5690e61edc774dd67e2b3826ca53e3cee2155562d4c032b7fc7bb31f284a76eeec9c44a4a3682e8593c77640dd1598a5	b10d82513eee4274	2021-07-28 14:59:51.134566+00	3	2021-07-29 00:59:51.133568+00	01dfb04e
6fed1a0dc94a0c4d6d11f4fde87e47603546a9217141c484327515b16fe158d366f2689f48250f87f9d9b1e9fe076352b970164bc52f6711be549f46f5337697	fe59ce55d7596d8b	2021-07-28 15:01:33.542396+00	4	2021-07-29 01:01:33.542396+00	9ea9f4e7
b5c2c5a24f13cf0b30d8ddf5956416023095f8e4cb0a07a1d844f4b2bb474755431b63e4d585a7111f1a590e29cb77cd8d0c0fc09f727fc4c20a82f56ae880e4	7d84cc05821610f2	2021-07-28 15:03:53.727068+00	5	2021-07-29 01:03:53.727068+00	104e4f14
9628670d95f474de10d256d4bbae8baa6f88fad48f4ba10335cd38054a89aab99fec51ed86c9f04506c3e654619395870716885e0f5bda310fabd45dca329261	a0cf348ed9c0cfde	2021-07-28 15:07:07.554444+00	7	2021-07-29 01:07:07.553446+00	b15e5e6c
78b80ebbe7ed87faa44007daa5f51f487271962b8a715893e64c2f46abed52a6a1f5a38434cf0cfafab91d4b8bd7ea276454495e21d1b2b9908901b9926bc82e	5278fd77d927a9bb	2021-07-28 15:30:34.310967+00	10	2021-07-29 01:30:34.30997+00	1693d29f
76616c456d0228198c2bad076b314aedb02aa28c606f51291a6a0a09d53e5af859ff1858077d28e50d6e81da9e1673e11aac01398959f5081d5af675dbfdc4fb	8038afa2b2c4109c	2021-08-02 04:16:55.21769+00	14	2021-08-02 14:16:55.21769+00	ba95d623
956bcee3f87d6cf1c8f7f6402ab847d04689303041652166b802964bead4acadc3ab86a482ab17ec3400080abae6a4e59b1fd5e67ff12e98782c9b1e942768da	11459fe4f7549acd	2021-08-02 13:35:04.24632+00	1	2021-08-02 23:35:04.24632+00	64275e4d
82a0a7d1a479071a24813a7a5ffc6d9d01552e7067b62a468de8125bbbad5046cb0face1c41cfb433a32236a74ca7522eca75650ea8af7bf26e7af69d71126e1	c3163cea0b04cc19	2021-08-02 16:15:37.610949+00	1	2021-08-03 02:15:37.610949+00	24d8ab6a
72f2692eded95ac16322647ed137a43edebb0ebe435017614a9e57cb892af2c056ac9c29af3972860fefdc59149d2e242ddb5735d2530d474912e3b1acc4762d	9d3e8b2eabf2b145	2021-08-02 17:19:12.954287+00	1	2021-08-03 03:19:12.954287+00	9f76b177
09cca80e1a82ff7a687fb2a039845b140266953d37a7b8c05f29881693d1acf7c49135b67498f2ef68c947b2899c743192a927a318aed01a109f368462b0009e	e5ef410ca6ae9dbd	2021-08-02 19:12:23.872878+00	29	2021-08-03 05:12:23.872878+00	4ef3b218
b22e9ce118e9da3f4b671ed7f45507e0753ccc83a4be4d01208e021560c6a93155a13463674509754d52fa923195d8537c6849c11170db43f18a48e3d83d4f31	433dd31e7e5f8490	2021-08-02 19:27:06.671763+00	33	2021-08-03 05:27:06.671763+00	d16f6821
28dd43288a19e51202a7a6e061faf13a734be196170681c04a36dbb88309edd6d27216223882f1d26dbaae69a4ac76de1f3fd65ca0eced8d6bed7ab3bdb40a9f	d54f25a7f328b75f	2021-08-02 19:34:43.589682+00	34	2021-08-03 05:34:43.589682+00	9ab689d2
f504fbfca1e0fc76a9677c437f9b0c2049ee00412076f811d1e7706a52344d8be7b2e99a51579c4a32ba746ba5a11e12c7a5795061210b523f39c3fd3b292e1f	de2f36d12da7c2c7	2021-08-02 19:48:12.66943+00	34	2021-08-03 05:48:12.66943+00	bd22cb7a
cc034c549588f0667907161100bb40dddd0fd1672402615f358b5523be822ff26a3eedd91723bd5beabe2be3b1e254062d1f45977a3ffbca01050f59a5780ba7	90654beb758dfd6d	2021-08-02 19:58:05.481573+00	34	2021-08-03 05:58:05.480575+00	b58c7690
634f3ce832025793b69e0ccb3e2b6cad65ddd0391850ea710ebf1cfe72845b52fe2ae4126d0e5757ccb8ac21cdb7787688520bafad169198ac108b19a0d5f7c5	18d6a61ec5ff9ec7	2021-08-02 19:58:45.792235+00	34	2021-08-03 05:58:45.792235+00	7e61b95d
7e9c3f547c185cf0135b66edab0f54f84b410dd4e96bd27175bf8a08b97ac777c7df414db1d748e0e3e632b218c76713276bde885f216d22422958780ba5b36e	92522fb5b0ff3930	2021-08-02 20:08:08.824352+00	37	2021-08-03 06:08:08.823355+00	6647fd8b
c5958c11d48b528b61fe028c3eff80c3c69e90eaf006981e1cc3e5b15d54d57067321dedb559fe9f2ddca9e55ab37b49bf8f545a290ec6b248e052641a9dfa01	80097e1480433aab	2021-08-02 20:10:31.764271+00	34	2021-08-03 06:10:31.764271+00	8f859795
49e557c88f62372584c71c363817b3daacbe1cee2e0bf9f77ae6b523097bbd197698038b99173575b753ba9e118a93d12000fae4939bdda521e97db43c71734a	e0b06979ba0a5fec	2021-08-02 20:13:04.771909+00	34	2021-08-03 06:13:04.770912+00	67306b23
9b7fe4601ab6a9b3ca8cc0ca1edd0fbaa246e115813438a836ce74f8ea8efd59eb4b29e30a450b16fe47f9f1e77cefc195cd69c4cc699efe82d09a797a6b3b97	86cdc9ad11a8e739	2021-08-02 20:14:50.37081+00	1	2021-08-03 06:14:50.369813+00	941b6a4a
a2171cd8b06f3da6ba82042dd581a23502fac8b88ed119f623e9830347d14f7a07cb04e0431625859ef11c5f254f0a8dc24087a9d4702d21b1efb54a8ed93617	df2720234b90beda	2021-08-02 20:26:02.689772+00	1	2021-08-03 06:26:02.689772+00	61008a3d
4280d7c8d50f8090c29dc3ce8bfcc20e60529443b3ae949023e575b66fcbfba12bf2416c189ab077977715024645c046175441269cd5daa91c698c7542f0105d	704765396d4b203e	2021-08-02 20:39:05.535076+00	38	2021-08-03 06:39:05.535076+00	a9c8b256
acc61050d3300c32e85700ad050f151c1aeffc7b2761893755cbdadd636ef758f45138fa7311d85acf7da5abd50522ef0a90a8d0225d8830e86c8b5128366623	922d353487c6426f	2021-08-02 20:47:42.458939+00	39	2021-08-03 06:47:42.458939+00	5a639d01
\.


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 217
-- Name: Answer_idAnswer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Answer_idAnswer_seq"', 1, false);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 210
-- Name: Comment_idComment_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Comment_idComment_seq"', 4, true);


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 206
-- Name: Dictionary_idDictionary_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Dictionary_idDictionary_seq"', 1, false);


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 208
-- Name: Group_idGroup_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Group_idGroup_seq"', 4, true);


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 219
-- Name: History_idHistory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."History_idHistory_seq"', 1, false);


--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 215
-- Name: Preference_idPreference_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Preference_idPreference_seq"', 1, false);


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 204
-- Name: Story_idStory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Story_idStory_seq"', 3, true);


--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 221
-- Name: Suggestion_idSuggestion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Suggestion_idSuggestion_seq"', 1, false);


--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 202
-- Name: User_idUser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_idUser_seq"', 3, true);


--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);


--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 235
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 233
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 39, true);


--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 237
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 239
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 223
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- TOC entry 2869 (class 2606 OID 28868)
-- Name: Answer PK_Answer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Answer"
    ADD CONSTRAINT "PK_Answer" PRIMARY KEY ("idAnswer");


--
-- TOC entry 2857 (class 2606 OID 28832)
-- Name: Comment PK_Comment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "PK_Comment" PRIMARY KEY ("idComment", "idUser");


--
-- TOC entry 2852 (class 2606 OID 28809)
-- Name: Dictionary PK_Dictionary; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionary"
    ADD CONSTRAINT "PK_Dictionary" PRIMARY KEY ("idDictionary");


--
-- TOC entry 2863 (class 2606 OID 28847)
-- Name: ExamplesDictionay PK_ExamplesDictionay; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamplesDictionay"
    ADD CONSTRAINT "PK_ExamplesDictionay" PRIMARY KEY ("idExamplesDictionay");


--
-- TOC entry 2854 (class 2606 OID 28820)
-- Name: Group PK_Group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "PK_Group" PRIMARY KEY ("idGroup");


--
-- TOC entry 2872 (class 2606 OID 28880)
-- Name: History PK_History; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."History"
    ADD CONSTRAINT "PK_History" PRIMARY KEY ("idHistory");


--
-- TOC entry 2866 (class 2606 OID 28856)
-- Name: Preference PK_Preference; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Preference"
    ADD CONSTRAINT "PK_Preference" PRIMARY KEY ("idPreference");


--
-- TOC entry 2859 (class 2606 OID 28837)
-- Name: ReadingList PK_ReadingList; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReadingList"
    ADD CONSTRAINT "PK_ReadingList" PRIMARY KEY ("idUser", "idStory");


--
-- TOC entry 2849 (class 2606 OID 28797)
-- Name: Story PK_Story; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Story"
    ADD CONSTRAINT "PK_Story" PRIMARY KEY ("idStory");


--
-- TOC entry 2874 (class 2606 OID 28891)
-- Name: Suggestion PK_Suggestion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Suggestion"
    ADD CONSTRAINT "PK_Suggestion" PRIMARY KEY ("idSuggestion");


--
-- TOC entry 2845 (class 2606 OID 28784)
-- Name: User PK_User; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "PK_User" PRIMARY KEY ("idUser");


--
-- TOC entry 2861 (class 2606 OID 28842)
-- Name: UserGroup PK_UserGroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroup"
    ADD CONSTRAINT "PK_UserGroup" PRIMARY KEY ("idUser", "idGroup");


--
-- TOC entry 2888 (class 2606 OID 29099)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2893 (class 2606 OID 29026)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2896 (class 2606 OID 28989)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 28979)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2883 (class 2606 OID 29017)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2885 (class 2606 OID 28971)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2904 (class 2606 OID 29007)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 29041)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2898 (class 2606 OID 28997)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2910 (class 2606 OID 29015)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2913 (class 2606 OID 29055)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2901 (class 2606 OID 29093)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2933 (class 2606 OID 29148)
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- TOC entry 2935 (class 2606 OID 29150)
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- TOC entry 2916 (class 2606 OID 29079)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 28963)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2880 (class 2606 OID 28961)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 28953)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2920 (class 2606 OID 29108)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2924 (class 2606 OID 29139)
-- Name: knox_authtoken knox_authtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_pkey PRIMARY KEY (digest);


--
-- TOC entry 2927 (class 2606 OID 29129)
-- Name: knox_authtoken knox_authtoken_salt_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_salt_key UNIQUE (salt);


--
-- TOC entry 2855 (class 1259 OID 28830)
-- Name: IX_Relationship10; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship10" ON public."Comment" USING btree ("idStory");


--
-- TOC entry 2846 (class 1259 OID 28795)
-- Name: IX_Relationship11; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship11" ON public."Story" USING btree ("idGroup");


--
-- TOC entry 2850 (class 1259 OID 28807)
-- Name: IX_Relationship23; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship23" ON public."Dictionary" USING btree ("idExamplesDictionary");


--
-- TOC entry 2864 (class 1259 OID 28854)
-- Name: IX_Relationship26; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship26" ON public."Preference" USING btree ("idStory");


--
-- TOC entry 2867 (class 1259 OID 28866)
-- Name: IX_Relationship33; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship33" ON public."Answer" USING btree ("idComment", "idUser");


--
-- TOC entry 2870 (class 1259 OID 28878)
-- Name: IX_Relationship34; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship34" ON public."History" USING btree ("idStory");


--
-- TOC entry 2847 (class 1259 OID 28794)
-- Name: IX_Relationship6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship6" ON public."Story" USING btree ("idUser");


--
-- TOC entry 2886 (class 1259 OID 29100)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2891 (class 1259 OID 29037)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2894 (class 1259 OID 29038)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2881 (class 1259 OID 29023)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2902 (class 1259 OID 29053)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2905 (class 1259 OID 29052)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2908 (class 1259 OID 29067)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2911 (class 1259 OID 29066)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2899 (class 1259 OID 29094)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2931 (class 1259 OID 29156)
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- TOC entry 2914 (class 1259 OID 29090)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2917 (class 1259 OID 29091)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2918 (class 1259 OID 29110)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2921 (class 1259 OID 29109)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2922 (class 1259 OID 29140)
-- Name: knox_authtoken_digest_188c7e77_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knox_authtoken_digest_188c7e77_like ON public.knox_authtoken USING btree (digest varchar_pattern_ops);


--
-- TOC entry 2925 (class 1259 OID 29136)
-- Name: knox_authtoken_salt_3d9f48ac_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knox_authtoken_salt_3d9f48ac_like ON public.knox_authtoken USING btree (salt varchar_pattern_ops);


--
-- TOC entry 2928 (class 1259 OID 29141)
-- Name: knox_authtoken_token_key_8f4f7d47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47 ON public.knox_authtoken USING btree (token_key);


--
-- TOC entry 2929 (class 1259 OID 29142)
-- Name: knox_authtoken_token_key_8f4f7d47_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47_like ON public.knox_authtoken USING btree (token_key varchar_pattern_ops);


--
-- TOC entry 2930 (class 1259 OID 29137)
-- Name: knox_authtoken_user_id_e5a5d899; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knox_authtoken_user_id_e5a5d899 ON public.knox_authtoken USING btree (user_id);


--
-- TOC entry 2937 (class 2606 OID 28892)
-- Name: Comment Relationship10; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Relationship10" FOREIGN KEY ("idStory") REFERENCES public."Story"("idStory");


--
-- TOC entry 2940 (class 2606 OID 28917)
-- Name: ReadingList Relationship17; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReadingList"
    ADD CONSTRAINT "Relationship17" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");


--
-- TOC entry 2939 (class 2606 OID 28912)
-- Name: ReadingList Relationship18; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReadingList"
    ADD CONSTRAINT "Relationship18" FOREIGN KEY ("idStory") REFERENCES public."Story"("idStory");


--
-- TOC entry 2941 (class 2606 OID 28922)
-- Name: UserGroup Relationship19; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroup"
    ADD CONSTRAINT "Relationship19" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");


--
-- TOC entry 2942 (class 2606 OID 28927)
-- Name: UserGroup Relationship20; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroup"
    ADD CONSTRAINT "Relationship20" FOREIGN KEY ("idGroup") REFERENCES public."Group"("idGroup");


--
-- TOC entry 2936 (class 2606 OID 28932)
-- Name: Dictionary Relationship23; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionary"
    ADD CONSTRAINT "Relationship23" FOREIGN KEY ("idExamplesDictionary") REFERENCES public."ExamplesDictionay"("idExamplesDictionay");


--
-- TOC entry 2943 (class 2606 OID 28902)
-- Name: Preference Relationship26; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Preference"
    ADD CONSTRAINT "Relationship26" FOREIGN KEY ("idStory") REFERENCES public."Story"("idStory");


--
-- TOC entry 2938 (class 2606 OID 28897)
-- Name: Comment Relationship31; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Relationship31" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");


--
-- TOC entry 2944 (class 2606 OID 28937)
-- Name: Answer Relationship33; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Answer"
    ADD CONSTRAINT "Relationship33" FOREIGN KEY ("idComment", "idUser") REFERENCES public."Comment"("idComment", "idUser");


--
-- TOC entry 2945 (class 2606 OID 28907)
-- Name: History Relationship34; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."History"
    ADD CONSTRAINT "Relationship34" FOREIGN KEY ("idStory") REFERENCES public."Story"("idStory");


--
-- TOC entry 2948 (class 2606 OID 29032)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2947 (class 2606 OID 29027)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2946 (class 2606 OID 29018)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2950 (class 2606 OID 29047)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2949 (class 2606 OID 29042)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2952 (class 2606 OID 29061)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2951 (class 2606 OID 29056)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2956 (class 2606 OID 29151)
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2953 (class 2606 OID 29080)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2954 (class 2606 OID 29085)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2955 (class 2606 OID 29130)
-- Name: knox_authtoken knox_authtoken_user_id_e5a5d899_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_user_id_e5a5d899_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-08-20 12:54:49

--
-- PostgreSQL database dump complete
--

