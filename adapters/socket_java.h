// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

#ifndef SOCKET_JAVA_C_H
#define SOCKET_JAVA_C_H

#ifdef __cplusplus
extern "C" {
#endif

#include "azure_c_shared_utility/umock_c_prod.h"

MOCKABLE_FUNCTION(, int, call_socket, char*, hostName, int, port)
	 //(char* hostName, int port);
	int call_close();


#ifdef __cplusplus
}
#endif

#endif /* SOCKET_JAVA_C_H */