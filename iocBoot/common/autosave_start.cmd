# autosave_start.cmd
# Required environment variables:
# ${IOC_DATA}
# ${IOC}

## Start autosave process:
cd("${IOC_DATA}/${IOC}/autosave-req")
makeAutosaveFiles()
create_monitor_set("info_settings.req", 20, "")

# End of file

