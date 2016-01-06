# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libktx.es1
DEFS_Debug := \
	'-DKTX_OPENGL_ES1=1' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

DEFS_Debug_Win32 := \
	'-DKTX_OPENGL_ES1=1' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug_Win32 := \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug_Win32 :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug_Win32 :=

INCS_Debug_Win32 := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

DEFS_Release := \
	'-DKTX_OPENGL_ES1=1' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

OBJS := \
	$(obj).target/$(TARGET)/lib/checkheader.o \
	$(obj).target/$(TARGET)/lib/errstr.o \
	$(obj).target/$(TARGET)/lib/etcdec.o \
	$(obj).target/$(TARGET)/lib/etcunpack.o \
	$(obj).target/$(TARGET)/lib/hashtable.o \
	$(obj).target/$(TARGET)/lib/ktxfilestream.o \
	$(obj).target/$(TARGET)/lib/ktxmemstream.o \
	$(obj).target/$(TARGET)/lib/loader.o \
	$(obj).target/$(TARGET)/lib/swap.o \
	$(obj).target/$(TARGET)/lib/writer.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug :=

LDFLAGS_Debug_Win32 :=

LDFLAGS_Release :=

LIBS :=

$(obj).target/libktx.es1.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libktx.es1.a: LIBS := $(LIBS)
$(obj).target/libktx.es1.a: TOOLSET := $(TOOLSET)
$(obj).target/libktx.es1.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/libktx.es1.a
# Add target alias
.PHONY: libktx.es1
libktx.es1: $(obj).target/libktx.es1.a
