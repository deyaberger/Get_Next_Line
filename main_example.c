/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_example.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dberger <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/10 12:48:07 by dberger           #+#    #+#             */
/*   Updated: 2020/03/10 12:49:52 by dberger          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <stdio.h>

int		main(int ac, char **av)
{
	int		fd;
	char	*line;

	if (ac != 2)
		return (0);
	fd = open(av[1], O_RDONLY);
	while (get_next_line(fd, &line) == 1)		
	{
		printf("%s\n", line);
		ft_memdel((void**)&line);
	}
	return (0);
}
