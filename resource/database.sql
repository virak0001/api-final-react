PGDMP     3                
    z            jp_blog_post    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    jp_blog_post    DATABASE     �   CREATE DATABASE jp_blog_post WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE jp_blog_post;
                postgres    false                        3079    16627 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false                       0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    2            �            1259    16422    posts    TABLE     8  CREATE TABLE public.posts (
    title character varying DEFAULT ''::character varying NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    content character varying DEFAULT ''::character varying NOT NULL,
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    "userId" uuid NOT NULL,
    image character varying DEFAULT ''::character varying NOT NULL,
    type character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false    2            �            1259    16400    users    TABLE     �  CREATE TABLE public.users (
    username character varying DEFAULT ''::character varying NOT NULL,
    password character varying DEFAULT ''::character varying NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    2                      0    16422    posts 
   TABLE DATA           q   COPY public.posts (title, "createdAt", "updatedAt", "deletedAt", content, id, "userId", image, type) FROM stdin;
    public          postgres    false    216   �                 0    16400    users 
   TABLE DATA           e   COPY public.users (username, password, email, "createdAt", "updatedAt", "deletedAt", id) FROM stdin;
    public          postgres    false    215   �       �           2606    16650 $   posts PK_2829ac61eff60fcec60d7274b9e 
   CONSTRAINT     d   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "PK_2829ac61eff60fcec60d7274b9e" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.posts DROP CONSTRAINT "PK_2829ac61eff60fcec60d7274b9e";
       public            postgres    false    216            �           2606    16658 $   users PK_a3ffb1c0c8416b9fc6f907b7433 
   CONSTRAINT     d   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433";
       public            postgres    false    215            �           2606    16659 $   posts FK_ae05faaa55c866130abef6e1fee    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "FK_ae05faaa55c866130abef6e1fee" FOREIGN KEY ("userId") REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.posts DROP CONSTRAINT "FK_ae05faaa55c866130abef6e1fee";
       public          postgres    false    3201    215    216                 x��W���F�y������1�F� �I�f�;+R�e���t���s��'d �}s-��n#B<��̙3�4p;��祝�������a�]c�1�5hlU\��Rؙ��	נ7��������_�_�e�=����>�Z~w��2w�N�E4l!�^�3�������U�8`��C�����(T]�F7ò��˗�}Z�ܝ��a������aZ&��,F�Q�`ɨ�=1s���˫�8^�_!�o_��q�u�/iw�/��t�N��t��ܦ}i�����B&t.�G���Y�9�lx�s��Q�
	c�e��>�:h<��{&��rV_��5��sz?���޳��~:�|��=�s���n~D#ҝ��k{��E�+%qJ����0�BX{�V=�N�����J�	�"'4��פ�-�z�KUYy��k��
�'��hD����Hm�BUi��dR9�1�N6�Yi�R֔��UF�J�HP�3��k��R�>2q���̀9*���^���KR��]��R��
ug)Oנ�����Z
��@ҨT�(�J��"=�T���l������n>�[����R]�`}��$[��Ae��3ԑ�qnǥ�R���hݥY;��r��&�ӛ4��B�Kݔ�n�����4	'k:���@Bw�����]mL+�w�ϾV��;豏^��ϔ��]��4/��v����E�A�0y_.�-����m�2'*ː+�.�B��Ӎ�otޖS�e3o��G_�F����L��H����1[����W4�_U֦B���sE�%��X��^�>�k�ΐ�
}�B�I*C�) V㒴�g���jVH�F��?v��ܮ\ȗ�
8b�9�,d����.p��s�=�O��Hœve��b����_���뼌�u��ß����o���e�R�5�Ο�ʰM5&�Mv�M)
C��](g�V��F�x�ð�a�|����`�=F�'U.��W����d�B����?�^X���=�#� �ף�$T9l3�Ӷ��Mnj�l��Y�_Hx�()vN&Q.���F���n�ܽ��������         �  x����nT1���<Ŭ�|d;�����$Xu�k���T�з'#��pذ���������=N�N��ڗ�{�k��]��[�~712�lЯNV������\�����L�с�2XI|���c��7��v�.�� �Q�x- �x��rm}�U˵���{�m�+��yaE�x) �E��.��� �!�0j�!$��`�t���/Ӌ�R��z�
?S�E�B����B�&�'���uՈi�o��c��[�K��{�χv�7W�Uhu�/$����!�.� ҹ��e��J��
�:�9>>�>�No���p�Z��[R����a���N��/E�#4�h*`i(�\#$��7+�X��О'�ڠ?�`ڠ[Ɇ�e�W_�N�C�v�R6�ѶA��c6Y��RHd�Z�y�
R���     