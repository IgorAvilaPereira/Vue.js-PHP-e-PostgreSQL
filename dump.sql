PGDMP         5                 y            concessionaria %   10.17 (Ubuntu 10.17-0ubuntu0.18.04.1) %   10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)     c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            f           1262    24873    concessionaria    DATABASE     �   CREATE DATABASE concessionaria WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE concessionaria;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            g           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13041    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            h           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24876    carro    TABLE     �   CREATE TABLE public.carro (
    id integer NOT NULL,
    placa text,
    modelo text,
    marca text,
    preco double precision
);
    DROP TABLE public.carro;
       public         postgres    false    3            �            1259    24874    carro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carro_id_seq;
       public       postgres    false    3    197            i           0    0    carro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carro_id_seq OWNED BY public.carro.id;
            public       postgres    false    196            �
           2604    24879    carro id    DEFAULT     d   ALTER TABLE ONLY public.carro ALTER COLUMN id SET DEFAULT nextval('public.carro_id_seq'::regclass);
 7   ALTER TABLE public.carro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            `          0    24876    carro 
   TABLE DATA               @   COPY public.carro (id, placa, modelo, marca, preco) FROM stdin;
    public       postgres    false    197   M       j           0    0    carro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carro_id_seq', 29, true);
            public       postgres    false    196            �
           2606    24884    carro carro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public         postgres    false    197            `   1   x�32�̬,Q0427�L)N+NI��".#SN���x��?T0F��� P�     