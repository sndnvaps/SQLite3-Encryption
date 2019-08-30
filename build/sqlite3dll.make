# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_win32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES +=
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
include config.gcc

define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_win32)
TARGETDIR = ../bin-gcc/dll/debug
TARGET = $(TARGETDIR)/sqlite3.dll
OBJDIR = obj-gcc/Win32/Debug/sqlite3dll
DEFINES += -D_WINDOWS -DWIN32 -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -D_USRDLL -DSQLITE_THREADSAFE=1 -DSQLITE_DQS=0 -DSQLITE_MAX_ATTACHED=10 -DSQLITE_SOUNDEX -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_HAS_CODEC=1 -DCODEC_TYPE=CODEC_TYPE_CHACHA20 -DSQLITE_SECURE_DELETE -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_GEOPOLY -DSQLITE_CORE -DSQLITE_ENABLE_EXTFUNC -DSQLITE_ENABLE_CSV -DSQLITE_ENABLE_SHA3 -DSQLITE_ENABLE_CARRAY -DSQLITE_ENABLE_FILEIO -DSQLITE_ENABLE_SERIES -DSQLITE_TEMP_STORE=2 -DSQLITE_USE_URI -DSQLITE_USER_AUTHENTICATION
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,--out-implib="../bin-gcc/dll/debug/sqlite3.lib"

else ifeq ($(config),debug_win64)
TARGETDIR = ../bin-gcc/dll/debug
TARGET = $(TARGETDIR)/sqlite3_x64.dll
OBJDIR = obj-gcc/Win64/Debug/sqlite3dll
DEFINES += -D_WINDOWS -DWIN32 -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -D_USRDLL -DSQLITE_THREADSAFE=1 -DSQLITE_DQS=0 -DSQLITE_MAX_ATTACHED=10 -DSQLITE_SOUNDEX -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_HAS_CODEC=1 -DCODEC_TYPE=CODEC_TYPE_CHACHA20 -DSQLITE_SECURE_DELETE -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_GEOPOLY -DSQLITE_CORE -DSQLITE_ENABLE_EXTFUNC -DSQLITE_ENABLE_CSV -DSQLITE_ENABLE_SHA3 -DSQLITE_ENABLE_CARRAY -DSQLITE_ENABLE_FILEIO -DSQLITE_ENABLE_SERIES -DSQLITE_TEMP_STORE=2 -DSQLITE_USE_URI -DSQLITE_USER_AUTHENTICATION
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,--out-implib="../bin-gcc/dll/debug/sqlite3_x64.lib"

else ifeq ($(config),release_win32)
TARGETDIR = ../bin-gcc/dll/release
TARGET = $(TARGETDIR)/sqlite3.dll
OBJDIR = obj-gcc/Win32/Release/sqlite3dll
DEFINES += -D_WINDOWS -DWIN32 -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -D_USRDLL -DSQLITE_THREADSAFE=1 -DSQLITE_DQS=0 -DSQLITE_MAX_ATTACHED=10 -DSQLITE_SOUNDEX -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_HAS_CODEC=1 -DCODEC_TYPE=CODEC_TYPE_CHACHA20 -DSQLITE_SECURE_DELETE -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_GEOPOLY -DSQLITE_CORE -DSQLITE_ENABLE_EXTFUNC -DSQLITE_ENABLE_CSV -DSQLITE_ENABLE_SHA3 -DSQLITE_ENABLE_CARRAY -DSQLITE_ENABLE_FILEIO -DSQLITE_ENABLE_SERIES -DSQLITE_TEMP_STORE=2 -DSQLITE_USE_URI -DSQLITE_USER_AUTHENTICATION
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,--out-implib="../bin-gcc/dll/release/sqlite3.lib" -s

else ifeq ($(config),release_win64)
TARGETDIR = ../bin-gcc/dll/release
TARGET = $(TARGETDIR)/sqlite3_x64.dll
OBJDIR = obj-gcc/Win64/Release/sqlite3dll
DEFINES += -D_WINDOWS -DWIN32 -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -D_USRDLL -DSQLITE_THREADSAFE=1 -DSQLITE_DQS=0 -DSQLITE_MAX_ATTACHED=10 -DSQLITE_SOUNDEX -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_HAS_CODEC=1 -DCODEC_TYPE=CODEC_TYPE_CHACHA20 -DSQLITE_SECURE_DELETE -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_GEOPOLY -DSQLITE_CORE -DSQLITE_ENABLE_EXTFUNC -DSQLITE_ENABLE_CSV -DSQLITE_ENABLE_SHA3 -DSQLITE_ENABLE_CARRAY -DSQLITE_ENABLE_FILEIO -DSQLITE_ENABLE_SERIES -DSQLITE_TEMP_STORE=2 -DSQLITE_USE_URI -DSQLITE_USER_AUTHENTICATION
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,--out-implib="../bin-gcc/dll/release/sqlite3_x64.lib" -s

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

CUSTOM :=
OBJECTS :=

CUSTOM += $(OBJDIR)/sqlite3.res
OBJECTS += $(OBJDIR)/sqlite3secure.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(CUSTOM) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking sqlite3dll
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning sqlite3dll
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

$(CUSTOM): | prebuild
ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/sqlite3.res: ../src/sqlite3.rc
	@echo $(notdir $<)
	$(SILENT) $(RESCOMP) $< -O coff -o "$@" $(ALL_RESFLAGS)
$(OBJDIR)/sqlite3secure.o: ../src/sqlite3secure.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif