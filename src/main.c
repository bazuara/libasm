/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/22 09:35:11 by bazuara           #+#    #+#             */
/*   Updated: 2021/03/26 11:47:26 by bazuara          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libasm.h>

int	test_strlen(char *str)
{
	if (strlen(str) != ft_strlen(str))
	{
		printf("Error testing strlen with %s\n", str);
		return (1);
	}
	else
		return (0);
}

int	test_strcpy(char *str)
{
	char *temp;

	temp = malloc(sizeof(char) * (strlen(str) + 1));
	ft_strcpy(temp, str);
	if (memcmp(str, temp, strlen(str)) != 0)
	{
		printf("Error: %s and %s are different\n", str, temp);
		return (1);	
	}
	else
		return (0);
}

int test_strcmp(char *str)
{
	if (strcmp(str, str) != ft_strcmp(str, str))
	{
		printf("Error testing strcmp with both %s\n", str);
		return (1);
	}
	if (strcmp(str, "") != ft_strcmp(str, ""))
	{
		printf("Error testing strcmp with %s and empty string\n", str);
		return (1);
	}
	if (strcmp("", str) != ft_strcmp("", str))
	{
		printf("Error testing strcmp with empty string and %s\n", str);
		return (1);
	}
	else
		return (0);
}

void test_write(char *str)
{
	printf("ft_:\n");
	ft_write(1, str, strlen(str)); 
	printf("sys:\n");
	write(1, str, strlen(str)); 
}

int	test_read(char *buff_a, char *buff_b, int len)
{
	printf("Insert string to read with ft_: \n");
	ft_read(1, buff_a, len);
	printf("Insert string to read with sys: \n");
	read(1, buff_b, len);
	if (strcmp(buff_a, buff_b) != 0)
	{
		printf("Error, both strings differ, %s %s\n", buff_a, buff_b);
		return (1);
	}
	else
		return (0);
}

int	main(void)
{
	char *str = "Hola\n";
	char *long_str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\
 sed do eiusmod tempor incididunt ut labore et dolore magna\
 aliqua. Ut enim ad minim veniam, quis nostrud exercitation\
 ullamco laboris nisi ut aliquip ex ea commodo consequat.\
 Duis aute irure dolor in reprehenderit in voluptate velit\
 esse cillum dolore eu fugiat nulla pariatur. Excepteur\
 sint occaecat cupidatat non proident, sunt in culpa qui\
 officia deserunt mollit anim id est laborum.\n";
	char *empty_str = "";
	char buff_a[40];
	char buff_b[40];

	bzero(buff_a, 40);
	bzero(buff_b, 40);
	printf("Testing strlen:\n");
	if (test_strlen(str) == 0)
		printf("OK\n");
	if (test_strlen(empty_str) == 0)
		printf("OK\n");
	if (test_strlen(long_str) == 0)
		printf("OK\n");
	printf("Testing strcpy:\n");
	if (test_strcpy(str) == 0)
		printf("OK\n");
	if (test_strcpy(empty_str) == 0)
		printf("OK\n");
	if (test_strcpy(long_str) == 0)
		printf("OK\n");
	printf("Testin strcmp:\n");
	if (test_strcmp(str) == 0)
		printf("OK\n");
	if (test_strcmp(empty_str) == 0)
		printf("OK\n");
	if (test_strcmp(long_str) == 0)
		printf("OK\n");
	printf("Testing write:\n");
	test_write(str);
	test_write(long_str);
	test_write(empty_str);
	printf("Testig read:\n");
	test_read(buff_a, buff_b, 40);

	return (0);
}
