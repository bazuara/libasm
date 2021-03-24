/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/22 09:35:11 by bazuara           #+#    #+#             */
/*   Updated: 2021/03/24 10:40:22 by bazuara          ###   ########.fr       */
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

int	main(void)
{
	char *str = "Hola";
	char *long_str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
	char *empty_str = "";

	printf("Testing strlen:\n");
	if (test_strlen(str) == 0)
		printf("OK\n");
	if (test_strlen(empty_str) == 0)
		printf("OK\n");
	if (test_strlen(long_str) == 0)
		printf("OK\n");
	printf("Testing strlen:\n");
	if (test_strcpy(str) == 0)
		printf("OK\n");
	if (test_strcpy(empty_str) == 0)
		printf("OK\n");
	if (test_strcpy(long_str) == 0)
		printf("OK\n");
	return (0);
}
