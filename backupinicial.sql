PGDMP                         {         
   evaluacion    15.1    15.1 !    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    24582 
   evaluacion    DATABASE     �   CREATE DATABASE evaluacion WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE evaluacion;
                postgres    false            �            1259    24976    actor    TABLE     c   CREATE TABLE public.actor (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    24975    actor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.actor_id_seq;
       public          postgres    false    217            &           0    0    actor_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.actor_id_seq OWNED BY public.actor.id;
          public          postgres    false    216            �            1259    24990    reparto_actores    TABLE       CREATE TABLE public.reparto_actores (
    id integer NOT NULL,
    id_actor integer NOT NULL,
    id_teleserie integer NOT NULL,
    protagonico boolean NOT NULL,
    sueldo integer NOT NULL,
    temporadas integer DEFAULT 0,
    capitulos integer DEFAULT 0
);
 #   DROP TABLE public.reparto_actores;
       public         heap    postgres    false            �            1259    24989    reparto_actores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reparto_actores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reparto_actores_id_seq;
       public          postgres    false    221            '           0    0    reparto_actores_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reparto_actores_id_seq OWNED BY public.reparto_actores.id;
          public          postgres    false    220            �            1259    24588    reparto_papi_ricky    TABLE     �   CREATE TABLE public.reparto_papi_ricky (
    nombre character varying(255) NOT NULL,
    capitulos integer,
    protagonico boolean,
    sueldo integer,
    id_teleserie integer DEFAULT 3
);
 &   DROP TABLE public.reparto_papi_ricky;
       public         heap    postgres    false            �            1259    24583    reparto_soltera_otra_vez    TABLE     �   CREATE TABLE public.reparto_soltera_otra_vez (
    nombre character varying(255) NOT NULL,
    temporadas integer,
    protagonico boolean,
    sueldo integer,
    id_teleserie integer DEFAULT 4
);
 ,   DROP TABLE public.reparto_soltera_otra_vez;
       public         heap    postgres    false            �            1259    24983 	   teleserie    TABLE     g   CREATE TABLE public.teleserie (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.teleserie;
       public         heap    postgres    false            �            1259    24982    teleserie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teleserie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.teleserie_id_seq;
       public          postgres    false    219            (           0    0    teleserie_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.teleserie_id_seq OWNED BY public.teleserie.id;
          public          postgres    false    218            y           2604    24979    actor id    DEFAULT     d   ALTER TABLE ONLY public.actor ALTER COLUMN id SET DEFAULT nextval('public.actor_id_seq'::regclass);
 7   ALTER TABLE public.actor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            {           2604    24993    reparto_actores id    DEFAULT     x   ALTER TABLE ONLY public.reparto_actores ALTER COLUMN id SET DEFAULT nextval('public.reparto_actores_id_seq'::regclass);
 A   ALTER TABLE public.reparto_actores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            z           2604    24986    teleserie id    DEFAULT     l   ALTER TABLE ONLY public.teleserie ALTER COLUMN id SET DEFAULT nextval('public.teleserie_id_seq'::regclass);
 ;   ALTER TABLE public.teleserie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    24976    actor 
   TABLE DATA           +   COPY public.actor (id, nombre) FROM stdin;
    public          postgres    false    217   ^%                 0    24990    reparto_actores 
   TABLE DATA           q   COPY public.reparto_actores (id, id_actor, id_teleserie, protagonico, sueldo, temporadas, capitulos) FROM stdin;
    public          postgres    false    221   '                 0    24588    reparto_papi_ricky 
   TABLE DATA           b   COPY public.reparto_papi_ricky (nombre, capitulos, protagonico, sueldo, id_teleserie) FROM stdin;
    public          postgres    false    215   (                 0    24583    reparto_soltera_otra_vez 
   TABLE DATA           i   COPY public.reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo, id_teleserie) FROM stdin;
    public          postgres    false    214   E)                 0    24983 	   teleserie 
   TABLE DATA           /   COPY public.teleserie (id, nombre) FROM stdin;
    public          postgres    false    219   �*       )           0    0    actor_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.actor_id_seq', 60, true);
          public          postgres    false    216            *           0    0    reparto_actores_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.reparto_actores_id_seq', 70, true);
          public          postgres    false    220            +           0    0    teleserie_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.teleserie_id_seq', 4, true);
          public          postgres    false    218            �           2606    24981    actor actor_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    217            �           2606    24997 $   reparto_actores reparto_actores_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.reparto_actores
    ADD CONSTRAINT reparto_actores_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.reparto_actores DROP CONSTRAINT reparto_actores_pkey;
       public            postgres    false    221            �           2606    24592 *   reparto_papi_ricky reparto_papi_ricky_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.reparto_papi_ricky
    ADD CONSTRAINT reparto_papi_ricky_pkey PRIMARY KEY (nombre);
 T   ALTER TABLE ONLY public.reparto_papi_ricky DROP CONSTRAINT reparto_papi_ricky_pkey;
       public            postgres    false    215                       2606    24587 6   reparto_soltera_otra_vez reparto_soltera_otra_vez_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.reparto_soltera_otra_vez
    ADD CONSTRAINT reparto_soltera_otra_vez_pkey PRIMARY KEY (nombre);
 `   ALTER TABLE ONLY public.reparto_soltera_otra_vez DROP CONSTRAINT reparto_soltera_otra_vez_pkey;
       public            postgres    false    214            �           2606    24988    teleserie teleserie_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.teleserie
    ADD CONSTRAINT teleserie_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.teleserie DROP CONSTRAINT teleserie_pkey;
       public            postgres    false    219            �           2606    24998 -   reparto_actores reparto_actores_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparto_actores
    ADD CONSTRAINT reparto_actores_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id);
 W   ALTER TABLE ONLY public.reparto_actores DROP CONSTRAINT reparto_actores_id_actor_fkey;
       public          postgres    false    221    217    3203            �           2606    25003 1   reparto_actores reparto_actores_id_teleserie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparto_actores
    ADD CONSTRAINT reparto_actores_id_teleserie_fkey FOREIGN KEY (id_teleserie) REFERENCES public.teleserie(id);
 [   ALTER TABLE ONLY public.reparto_actores DROP CONSTRAINT reparto_actores_id_teleserie_fkey;
       public          postgres    false    221    3205    219               �  x�5Q��1��O�'@��s~�$�@�@D�|�f�[��y%�/(�6_�������C�Zi<���1Su�K`}@�w�6�1��z�SJ��<�����	<Ȍ`*u�T~�~H��3�v}���h 3�ۨy��1���Z�̑B@�)u>z0��l���Y�='ʬW	o�����;ח_��j���bB�r�e�H����U�%��1{
z��>%��R�@W�ub}Nte�F��;����q�����_��T���G/[!�WBa/�gj}#�eR}�j�6��a��!P;�S����� v���#�g��/�\j͝�֨=q�T�>R��`+u�Qd��^|l�`������#_D����6�#u�w��5҇�����2'�#���B}h"��7L-�ڋ��:S��g�Dw��&����K�3��� �s>�;         �   x�]�Ir!C��0)�6�]��	���{ B���W�$	�@��
2
I�bG%��:h8�gl��{l�C�6���7u���<���#9��aَ��#>H ����L�%��c0 �e0!+�F�!�9*��В
�[-KBN�V���q�%�mOT����Z��9�r����V���ɬ_�Y�b@��Ӫ��Mh�Ц#Ȉ �!�N�O'��9h��Q��ne޶ê\�n�ݎ[C����'����b�           x�]�MN�0���)��%��e� (j���
��Q�ȱ��jn�2V�îѲi>�7�^i�!x�wT�0Yfy��b�d�#)?j8g.�v�+a�?��#<)��Or��=jxF%����C��>d�v�� ;��7d4rm`G�!�YELV:�=�T�Ԧ�
MB̿�E�JQ��fS;�ۈ
�j���Bnf����F�p���xN��;����������G���p�x~2�ҵ-2�Q�P�DnNM�G�L�B�~s6��OGuO
VM/�i"YT�]�i�wφ�         4  x�M��N1��ݧ�P<�UJ/cց�L��m8r��/f�����_��FO��C��'Vw*�~���%|X�0�W�#(I��9�
6�8Hp&�Ġ�8��mF�7�A�	��W�|O��x�٩_Ȉ�'���a1`KFY��&�K,�6h�-)�h�~�ˑ��Ԗ���隧��������+���9�=q�ۤaf��!�%�yCС��f �ēŦ��1������t!ٲ��@��V=��	�
8�%���h�fY�o��Ýt�tT�=�:�9��{�)������         +   x�3�H,�T�Lή�2���)I-JT�/e�U\1z\\\ ��     