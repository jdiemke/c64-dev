BUILD_FOLDER = build/
SOURCE_FOLDER = src/

BAS = $(wildcard $(SOURCE_FOLDER)*.bas)
PRG = $(patsubst $(SOURCE_FOLDER)%,$(BUILD_FOLDER)%,$(BAS:.bas=.prg))

all: $(PRG)

run-%: $(BUILD_FOLDER)%.prg
	x64sc -pal $^

$(BUILD_FOLDER)%.prg: $(SOURCE_FOLDER)%.bas | $(BUILD_FOLDER)
	petcat -w2 -o $@ -- $^

$(BUILD_FOLDER):
	mkdir -p $(BUILD_FOLDER)

clean:
	rm -r -f build
