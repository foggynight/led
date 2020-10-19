#ifndef COMMAND_H
#define COMMAND_H

#include "buffer.h"
#include "config.h"

typedef unsigned int uint;

// Command: User command storage
typedef struct command {
	uint line;  // Target line number
	char *id;   // Command ID
	uint count; // Repeat count times
} Command;

int cmd_process(Command *cmd, Buffer *buffer, Config *config);

#endif
