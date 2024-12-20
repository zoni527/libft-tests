/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jvarila <jvarila@student.hive.fi>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/05 16:41:09 by jvarila           #+#    #+#             */
/*   Updated: 2024/11/05 16:48:04 by jvarila          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>
#include <string.h>

#define BUFFER_LENGTH 1024
#define INT_ARRAY_LENGTH 10

void	ft_print_int_array(int *array, int n);

int	main(int argc, char **argv)
{
	char	buffer1[BUFFER_LENGTH];
	char	buffer2[BUFFER_LENGTH];
	char	*s1;
	char	*s2;
	int		rval1;
	int		rval2;
	int		int_array1[INT_ARRAY_LENGTH] = {0};
	int		int_array2[INT_ARRAY_LENGTH] = {0};
	int		n = -1;
	int		i;

	memset(buffer1, 0x00000041, BUFFER_LENGTH);
	memset(buffer2, 0x00000042, BUFFER_LENGTH);
	memset(int_array1, 0x00000001, sizeof(int_array1));
	memset(int_array2, 0x00000001, sizeof(int_array2));
	int_array2[INT_ARRAY_LENGTH - 1] = 0x00000002;
	s1 = "abcdefghijklmnop";
	s2 = "abcdefghhijklmno";

	if (argc > 1)
		s1 = argv[1];
	if (argc > 2)
		s2 = argv[2];
	if (argc > 3)
		n = atoi(argv[3]);
	if (argc > 4)
	{
		printf("\nThe program works with 0, 1, 2 or 3 command line arguments\n\n");
		return (0);
	}

	printf("\n");
	printf("%-10s%s\n", "String 1:", s1);
	printf("%-10s%s\n", "String 2:", s2);
	if (strlen(s1) > strlen(s2) && argc != 4)
		n = strlen(s1) + 1;
	else if (strlen(s2) <= strlen(s2) && argc != 4)
		n = strlen(s2) + 1;
	printf("\n%10s%10s%15s\n", "i", "memcmp", "ft_memcmp");
	printf("------------------------------------------\n");
	i = -2;
	while (++i < n)
	{
		rval1 = memcmp(s1, s2, i);
		rval2 = ft_memcmp(s1, s2, i);
		printf("%10d%7d%15d\n", i, rval1, rval2);
	}
	printf("\n");
	return (0);
}

void	ft_print_int_array(int *array, int n)
{
	int	i;

	i = -1;
	while (++i < n)
		printf("%-5d", array[i]);
	printf("\n");
}
