# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvarila <jvarila@student.hive.fi>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/30 13:16:04 by jvarila           #+#    #+#              #
#    Updated: 2024/11/06 11:06:58 by jvarila          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror
SRC = ../../Projects/libft/
HF = libft.h
CFILES = ../../Projects/Libft/*.c
OFILES = $(CFILES:.c=.o)

all:	ft_isalpha_test		\
	ft_isdigit_test		\
	ft_isalnum_test		\
	ft_isascii_test		\
	ft_isprint_test		\
	ft_strlen_test		\
	ft_memset_test		\
	ft_bzero_test		\
	ft_memcpy_test		\
	ft_memmove_test		\
	ft_strlcpy_test		\
	ft_strlcat_test		\
	ft_toupper_test		\
	ft_tolower_test		\
	ft_strchr_test		\
	ft_strrchr_test		\
	ft_strncmp_test		\
	ft_memchr_test		\
	ft_memcmp_test		\
	ft_strnstr_test		\
	ft_atoi_test		\
	ft_calloc_test		\
	ft_strdup_test		\
	ft_substr_test		\
	ft_strjoin_test		\
	ft_strtrim_test		\
	ft_split_test		\
	ft_itoa_test		\
	ft_strmapi_test		\
	ft_striteri_test	\
	ft_putchar_fd_test	\
	ft_putstr_fd_test	\
	ft_putendl_fd_test	\
	ft_putnbr_fd_test

ft_isalpha_test:	$(HF)			\
			ft_isalpha_test.c	\
			$(SRC)ft_isalpha.c
	$(CC) $(CFLAGS) -o ft_isalpha_test ft_isalpha_test.c \
			$(SRC)ft_isalpha.c

ft_isdigit_test: ft_isdigit_test.c $(SRC)ft_isdigit.c $(HF)
	$(CC) $(CFLAGS) -o ft_isdigit_test ft_isdigit_test.c $(SRC)ft_isdigit.c

ft_isalnum_test: ft_isalnum_test.c $(SRC)ft_isalnum.c $(HF)
	$(CC) $(CFLAGS) -o ft_isalnum_test ft_isalnum_test.c $(SRC)ft_isalnum.c

ft_isascii_test: ft_isascii_test.c $(SRC)ft_isascii.c $(HF)
	$(CC) $(CFLAGS) -o ft_isascii_test ft_isascii_test.c $(SRC)ft_isascii.c

ft_isprint_test: ft_isprint_test.c $(SRC)ft_isprint.c $(HF)
	$(CC) $(CFLAGS) -o ft_isprint_test ft_isprint_test.c $(SRC)ft_isprint.c

ft_strlen_test: ft_strlen_test.c $(SRC)ft_strlen.c $(HF)
	$(CC) $(CFLAGS) -o ft_strlen_test ft_strlen_test.c $(SRC)ft_strlen.c

ft_memset_test: ft_memset_test.c $(SRC)ft_memset.c $(HF)
	$(CC) $(CFLAGS) -o ft_memset_test ft_memset_test.c $(SRC)ft_memset.c

ft_bzero_test: ft_bzero_test.c $(SRC)ft_bzero.c $(HF)
	$(CC) $(CFLAGS) -o ft_bzero_test ft_bzero_test.c $(SRC)ft_bzero.c

ft_memcpy_test: ft_memcpy_test.c $(SRC)ft_memcpy.c $(HF)
	$(CC) $(CFLAGS) -o ft_memcpy_test ft_memcpy_test.c $(SRC)ft_memcpy.c

ft_memmove_test: ft_memmove_test.c $(SRC)ft_memmove.c $(HF)
	$(CC) $(CFLAGS) -o ft_memmove_test ft_memmove_test.c $(SRC)ft_memmove.c

ft_strlcpy_test: ft_strlcpy_test.c $(SRC)ft_strlcpy.c $(SRC)ft_strlen.c $(HF)
	$(CC) $(CFLAGS) -o ft_strlcpy_test ft_strlcpy_test.c $(SRC)ft_strlcpy.c $(SRC)ft_strlen.c -lbsd

ft_strlcat_test: ft_strlcat_test.c $(SRC)ft_strlcat.c $(SRC)ft_strlen.c $(HF)
	$(CC) $(CFLAGS) -o ft_strlcat_test ft_strlcat_test.c $(SRC)ft_strlcat.c $(SRC)ft_strlen.c -lbsd

ft_toupper_test: ft_toupper_test.c $(SRC)ft_toupper.c $(HF)
	$(CC) $(CFLAGS) -o ft_toupper_test ft_toupper_test.c $(SRC)ft_toupper.c

ft_tolower_test: ft_tolower_test.c $(SRC)ft_tolower.c $(HF)
	$(CC) $(CFLAGS) -o ft_tolower_test ft_tolower_test.c $(SRC)ft_tolower.c

ft_strchr_test: ft_strchr_test.c $(SRC)ft_strchr.c $(HF)
	$(CC) $(CFLAGS) -o ft_strchr_test ft_strchr_test.c $(SRC)ft_strchr.c

ft_strrchr_test: ft_strrchr_test.c $(SRC)ft_strrchr.c $(HF)
	$(CC) $(CFLAGS) -o ft_strrchr_test ft_strrchr_test.c $(SRC)ft_strrchr.c

ft_strncmp_test: ft_strncmp_test.c $(SRC)ft_strncmp.c $(HF)
	$(CC) $(CFLAGS) -o ft_strncmp_test ft_strncmp_test.c $(SRC)ft_strncmp.c

ft_memchr_test: ft_memchr_test.c $(SRC)ft_memchr.c $(HF)
	$(CC) $(CFLAGS) -o ft_memchr_test ft_memchr_test.c $(SRC)ft_memchr.c -lbsd

ft_memcmp_test: ft_memcmp_test.c $(SRC)ft_memcmp.c $(HF)
	$(CC) $(CFLAGS) -o ft_memcmp_test ft_memcmp_test.c $(SRC)ft_memcmp.c

ft_strnstr_test: ft_strnstr_test.c $(SRC)ft_strnstr.c $(HF)
	$(CC) $(CFLAGS) -o ft_strnstr_test ft_strnstr_test.c $(SRC)ft_strnstr.c -lbsd

ft_atoi_test: ft_atoi_test.c $(SRC)ft_atoi.c $(HF)
	$(CC) $(CFLAGS) -o ft_atoi_test ft_atoi_test.c $(SRC)ft_atoi.c

ft_calloc_test: ft_calloc_test.c $(SRC)ft_calloc.c $(SRC)ft_memset.c $(HF)
	$(CC) $(CFLAGS) -o ft_calloc_test ft_calloc_test.c $(SRC)ft_calloc.c $(SRC)ft_memset.c

ft_strdup_test: ft_strdup_test.c $(SRC)ft_strdup.c $(SRC)ft_memcpy.c $(SRC)ft_strlen.c $(HF)
	$(CC) $(CFLAGS) -o ft_strdup_test ft_strdup_test.c $(SRC)ft_strdup.c $(SRC)ft_memcpy.c $(SRC)ft_strlen.c

ft_substr_test: ft_substr_test.c $(SRC)ft_substr.c $(SRC)ft_calloc.c $(SRC)ft_strlen.c $(SRC)ft_strlcpy.c $(SRC)ft_memset.c $(HF)
	$(CC) $(CFLAGS) -o ft_substr_test ft_substr_test.c $(SRC)ft_substr.c \
		$(SRC)ft_calloc.c $(SRC)ft_strlen.c $(SRC)ft_strlcpy.c $(SRC)ft_memset.c

ft_strjoin_test:	$(HF)			\
			ft_strjoin_test.c       \
			$(SRC)ft_strjoin.c      \
			$(SRC)ft_strlen.c       \
			$(SRC)ft_strlcat.c
	$(CC) $(CFLAGS) -o ft_strjoin_test ft_strjoin_test.c \
			$(SRC)ft_strjoin.c	\
			$(SRC)ft_strlen.c 	\
			$(SRC)ft_strlcat.c

ft_strtrim_test:	$(HF)			\
			ft_strtrim_test.c	\
			$(SRC)ft_strtrim.c	\
			$(SRC)ft_strrchr.c	\
			$(SRC)ft_strchr.c	\
			$(SRC)ft_calloc.c	\
			$(SRC)ft_memset.c	\
			$(SRC)ft_strlcpy.c	\
			$(SRC)ft_strlen.c
	$(CC) $(CFLAGS) -o ft_strtrim_test ft_strtrim_test.c \
			$(SRC)ft_strtrim.c	\
			$(SRC)ft_strrchr.c	\
			$(SRC)ft_strchr.c	\
			$(SRC)ft_calloc.c	\
			$(SRC)ft_memset.c	\
			$(SRC)ft_strlcpy.c	\
			$(SRC)ft_strlen.c

ft_split_test:		$(HF)			\
			ft_split_test.c		\
			$(SRC)ft_split.c	\
			$(SRC)ft_strchr.c	\
			$(SRC)ft_calloc.c	\
			$(SRC)ft_substr.c	\
			$(SRC)ft_memset.c	\
			$(SRC)ft_strlcpy.c	\
			$(SRC)ft_strlen.c
	$(CC) $(CFLAGS) -o ft_split_test ft_split_test.c \
			$(SRC)ft_split.c	\
			$(SRC)ft_strchr.c	\
			$(SRC)ft_calloc.c	\
			$(SRC)ft_substr.c	\
			$(SRC)ft_memset.c	\
			$(SRC)ft_strlcpy.c	\
			$(SRC)ft_strlen.c

ft_itoa_test:		$(HF)			\
			ft_itoa_test.c		\
			$(SRC)ft_itoa.c		\
			$(SRC)ft_strlen.c
	$(CC) $(CFLAGS) -o ft_itoa_test ft_itoa_test.c \
			$(SRC)ft_itoa.c		\
			$(SRC)ft_strlen.c

ft_strmapi_test:	$(HF)			\
			ft_strmapi_test.c	\
			$(SRC)ft_strmapi.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c
	$(CC) $(CFLAGS) -o ft_strmapi_test ft_strmapi_test.c \
			$(SRC)ft_strmapi.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c

ft_striteri_test:	$(HF)			\
			ft_striteri_test.c	\
			$(SRC)ft_striteri.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c
	$(CC) $(CFLAGS) -o ft_striteri_test ft_striteri_test.c \
			$(SRC)ft_striteri.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c

ft_putchar_fd_test:	$(HF)			\
			ft_putchar_fd_test.c	\
			$(SRC)ft_putchar_fd.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c	
	$(CC) $(CFLAGS) -o ft_putchar_fd_test ft_putchar_fd_test.c \
			$(SRC)ft_putchar_fd.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c

ft_putstr_fd_test:	$(HF)			\
			ft_putstr_fd_test.c	\
			$(SRC)ft_putstr_fd.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c	
	$(CC) $(CFLAGS) -o ft_putstr_fd_test ft_putstr_fd_test.c \
			$(SRC)ft_putstr_fd.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c

ft_putendl_fd_test:	$(HF)			\
			ft_putendl_fd_test.c	\
			$(SRC)ft_putendl_fd.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c	
	$(CC) $(CFLAGS) -o ft_putendl_fd_test ft_putendl_fd_test.c \
			$(SRC)ft_putendl_fd.c	\
			$(SRC)ft_strdup.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_memcpy.c

ft_putnbr_fd_test:	$(HF)			\
			ft_putnbr_fd_test.c	\
			$(SRC)ft_putstr_fd.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_itoa.c		\
			$(SRC)ft_putnbr_fd.c
	$(CC) $(CFLAGS) -o ft_putnbr_fd_test ft_putnbr_fd_test.c \
			$(SRC)ft_putstr_fd.c	\
			$(SRC)ft_strlen.c	\
			$(SRC)ft_itoa.c		\
			$(SRC)ft_putnbr_fd.c

fclean:
	rm -f ./*_test

clean:

