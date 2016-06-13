
OUTPUT_DIR = build
SRC_DIR    = src

BIN_TARGET = $(OUTPUT_DIR)/test

SRC_FILES  = main.c file1.c file2.c foo/bar.c
OBJ_FILES  = $(addprefix $(OUTPUT_DIR)/$(SRC_DIR)/, $(patsubst %.c, %.o, $(SRC_FILES)))

CFLAGS     = -I$(SRC_DIR)
MKDIR_CMD  = mkdir -p

all: $(BIN_TARGET)
	strip $(BIN_TARGET)

$(BIN_TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) -o $(BIN_TARGET) $(OBJ_FILES)

$(OBJ_FILES): $(OUTPUT_DIR)/%.o: %.c
	$(MKDIR_CMD) $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(BIN_TARGET)
	find $(OUTPUT_DIR) -name "*.o" -type f -delete

