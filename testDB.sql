PGDMP                     	    z           postgres    10.4    10.4     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?
           1262    12938    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE postgres;
             postgres    false            ?
           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2806                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            ?
           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            ?            1259    119228    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    4            ?
           0    0    SEQUENCE hibernate_sequence    ACL     U   GRANT SELECT,USAGE ON SEQUENCE public.hibernate_sequence TO suite WITH GRANT OPTION;
            public       postgres    false    197            ?            1259    119230 
   m_pelicula    TABLE     ?   CREATE TABLE public.m_pelicula (
    id bigint NOT NULL,
    clasificacion character varying(255),
    duracion integer,
    imagen character varying(255),
    nombre character varying(255)
);
    DROP TABLE public.m_pelicula;
       public         postgres    false    4            ?
           0    0    TABLE m_pelicula    ACL     A   GRANT ALL ON TABLE public.m_pelicula TO suite WITH GRANT OPTION;
            public       postgres    false    198            ?
          0    119230 
   m_pelicula 
   TABLE DATA               Q   COPY public.m_pelicula (id, clasificacion, duracion, imagen, nombre) FROM stdin;
    public       postgres    false    198   e       ?
           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
            public       postgres    false    197            u
           2606    119237    m_pelicula m_pelicula_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.m_pelicula
    ADD CONSTRAINT m_pelicula_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.m_pelicula DROP CONSTRAINT m_pelicula_pkey;
       public         postgres    false    198            ?           826    33775     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     h   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,USAGE ON SEQUENCES  TO suite WITH GRANT OPTION;
                  postgres    false            ?           826    33777    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     [   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES  TO suite WITH GRANT OPTION;
                  postgres    false            ?           826    33776     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     _   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS  TO suite WITH GRANT OPTION;
                  postgres    false            ?           826    33774    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     \   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO suite WITH GRANT OPTION;
                  postgres    false            ?
      x?????? ? ?     