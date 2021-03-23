/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/22 09:35:11 by bazuara           #+#    #+#             */
/*   Updated: 2021/03/23 12:04:46 by bazuara          ###   ########.fr       */
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

int	main(void)
{
	printf("Testing strlen:\n");
	if (test_strlen("Hola") == 0)
		printf("OK\n");
	if (test_strlen("") == 0)
		printf("OK\n");
	return (0);
}
