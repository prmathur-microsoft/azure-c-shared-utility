// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

#include "azure_c_shared_utility/singlylinkedlist.h"
#include "azure_c_shared_utility/gballoc.h"
#include <stdio.h>


int  main (int argc, char* argv)
{
	SINGLYLINKEDLIST_HANDLE lh;
	lh = singlylinkedlist_create();

	if(lh != NULL)
	{
		printf("List created \n");
		printf("List destroyed \n");
		singlylinkedlist_destroy(lh);
	}

	return 0;
}

