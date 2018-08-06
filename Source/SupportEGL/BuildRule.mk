#  DON'T EDIT THIS FILE.
#  THIS IS GENERATED BY "Configuration/configure_BuildRule.py".


OBJECTS := \
$(OUTDIR)/./Call.o \
$(OUTDIR)/./Viewer/Config.o \
$(OUTDIR)/./Viewer/Context.o \
$(OUTDIR)/./Viewer/Display.o \
$(OUTDIR)/./Viewer/Screen.o \
$(OUTDIR)/./Viewer/ScreenBase.o \
$(OUTDIR)/./Viewer/Surface.o \



$(OUTDIR)/./Viewer/%.o: ./Viewer/%.cpp ./Viewer/%.h
	$(MKDIR) $(OUTDIR)/./Viewer
	$(CPP) -c $(CPPFLAGS) $(DEFINITIONS) $(INCLUDE_PATH) -o $@ $<

$(OUTDIR)/./%.o: ./%.cpp ./%.h
	$(MKDIR) $(OUTDIR)
	$(CPP) -c $(CPPFLAGS) $(DEFINITIONS) $(INCLUDE_PATH) -o $@ $<


install::
	$(MKDIR) $(INSTALL_DIR)/include/SupportEGL/.
	$(INSTALL) ./*.h $(INSTALL_DIR)/include/SupportEGL/.
	$(MKDIR) $(INSTALL_DIR)/include/SupportEGL/./Viewer
	$(INSTALL) ./Viewer/*.h $(INSTALL_DIR)/include/SupportEGL/./Viewer