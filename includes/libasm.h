/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/23 09:34:59 by bazuara           #+#    #+#             */
/*   Updated: 2021/03/26 11:03:37 by bazuara          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <strings.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *str);
int		ft_strcmp(char const *s1, char const *s2);
size_t	ft_write(int fildes, void const *buf, size_t nbyte);
size_t	ft_read(int fildes, void *buf, size_t nbyte);
char 	*ft_strdup(const char *s1);


#endif
