PGDMP                         {           quizdatabase    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16418    quizdatabase    DATABASE        CREATE DATABASE quizdatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE quizdatabase;
                postgres    false            �            1259    16472    myseq    SEQUENCE     n   CREATE SEQUENCE public.myseq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.myseq;
       public          postgres    false            �            1259    16433    question_seq    SEQUENCE     v   CREATE SEQUENCE public.question_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.question_seq;
       public          postgres    false            �            1259    16515 	   questions    TABLE     p  CREATE TABLE public.questions (
    id integer NOT NULL,
    category character varying(255),
    difficultylevel character varying(255),
    option1 character varying(255),
    option2 character varying(255),
    option3 character varying(255),
    option4 character varying(255),
    question_title character varying(255),
    right_answer character varying(255)
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    16519    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public          postgres    false    217                       0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public          postgres    false    218            �            1259    16470    questions_seq    SEQUENCE     w   CREATE SEQUENCE public.questions_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.questions_seq;
       public          postgres    false            �            1259    16527    quiz    TABLE     X   CREATE TABLE public.quiz (
    id integer NOT NULL,
    title character varying(255)
);
    DROP TABLE public.quiz;
       public         heap    postgres    false            �            1259    16526    quiz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.quiz_id_seq;
       public          postgres    false    220                       0    0    quiz_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.quiz_id_seq OWNED BY public.quiz.id;
          public          postgres    false    219            �            1259    16533    quiz_questions    TABLE     h   CREATE TABLE public.quiz_questions (
    quiz_id integer NOT NULL,
    questions_id integer NOT NULL
);
 "   DROP TABLE public.quiz_questions;
       public         heap    postgres    false            q           2604    16520    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            r           2604    16530    quiz id    DEFAULT     b   ALTER TABLE ONLY public.quiz ALTER COLUMN id SET DEFAULT nextval('public.quiz_id_seq'::regclass);
 6   ALTER TABLE public.quiz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220                      0    16515 	   questions 
   TABLE DATA           �   COPY public.questions (id, category, difficultylevel, option1, option2, option3, option4, question_title, right_answer) FROM stdin;
    public          postgres    false    217   �       
          0    16527    quiz 
   TABLE DATA           )   COPY public.quiz (id, title) FROM stdin;
    public          postgres    false    220   /                 0    16533    quiz_questions 
   TABLE DATA           ?   COPY public.quiz_questions (quiz_id, questions_id) FROM stdin;
    public          postgres    false    221   T                  0    0    myseq    SEQUENCE SET     3   SELECT pg_catalog.setval('public.myseq', 2, true);
          public          postgres    false    216                       0    0    question_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.question_seq', 1, false);
          public          postgres    false    214                       0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 18, true);
          public          postgres    false    218                       0    0    questions_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.questions_seq', 1, false);
          public          postgres    false    215                       0    0    quiz_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.quiz_id_seq', 1, true);
          public          postgres    false    219            t           2606    16532    quiz quiz_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.quiz DROP CONSTRAINT quiz_pkey;
       public            postgres    false    220            u           2606    16536 *   quiz_questions fkcgp9e1c6ww3t383aui4w8feae    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_questions
    ADD CONSTRAINT fkcgp9e1c6ww3t383aui4w8feae FOREIGN KEY (quiz_id) REFERENCES public.quiz(id);
 T   ALTER TABLE ONLY public.quiz_questions DROP CONSTRAINT fkcgp9e1c6ww3t383aui4w8feae;
       public          postgres    false    3188    220    221               �  x��VM��4=˿B'6!K��G��RS�"UdI�"[�@8h��XYY2�<����Z����q�ˮG���^�~핸Q;%^�8�ڪ�q�B�jt���(��zK����ԭ�3�ƽZ�(�HZ&/�@*�T2�m=�.f�n~z%n^ߊ�o���緇���z�f��ҹԴ�R9-��iRK�##���!"V��L2���l��$��ߋ�.�?߷*�� �5�$w�$}�,rpƙd�5���{KXݩ`��N!��Y�8_�^�Z���q���H��ޚ�$;�Ӝ��k��n-�Zu=��r��_ QGd��.&咐���Qj�D'7�U]Sd${��!��T�,ǩ3'LTQȃ��+�|⸥��C�`���;�t�	ta��T�s��gG�:��2������9��؛����Q}���w�xZ@�*z\y?�[�C�:ɽY ��4p�3�:�s���b���AZ�{!�-������ψ�C�����B��	�&ƕ��[MK�G�$=�Z�)v��弄�t��� g�C~f*{In����y
��À� ��V!o��w���1��W8�ᐝ��"�Ž$n�k�a��L�_C�uK�])�6eaAJn��{��P��zQ�~��G��m�����"���U_�k�D�τ�T����{fy�븥2���)�c`��I�z6�����[��A�oLD��wG:?��w�����fo-z�	-���榜N��D++�G�:���,�mT��Z�ď#:��up��ct%���[r���	�[n^��fp����փU�SN��%L��X�u^�w�Tݲ�4� ����T}�ұ1�	C���H.ܷ�p�Ş%�1�����:�8�<���Z].dae������ٮ�!��gڛ"{|7)��)&�s�ju�L�ْc��^�H��n�6�%CϽ�ŭ��R>Q:���/�o,��OK�����&�5)�/�Q��R��3�G��f�wj��a��^Raب�U�yD�Ͳ/�&�k�T�s����l�Vϗ!����E�Z!=�Ǹ�e��PFi.$[���Q<:O���<��V�)r��d��E1-=���,��Ӈ��l죓g���Z����L^n��¸,_?l>��ǻ�֧��ţ��J�S�V,�s0Y}xZU�����      
      x�3��
,ͬ����� �            x�3�4��2�44  �9�q��qqq 1�l     