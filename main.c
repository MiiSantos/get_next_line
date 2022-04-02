/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mandress <mandress@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/02 04:40:32 by mandress          #+#    #+#             */
/*   Updated: 2022/04/02 21:30:26 by mandress         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <fcntl.h>
#include <stdio.h>

int	main()
{
	int	fd = open("arquivo", O_RDONLY);
	char *frase;

	while ((frase = get_next_line(fd)) != NULL)
	{
		printf("%s", frase);
		free(frase);
	}
}
