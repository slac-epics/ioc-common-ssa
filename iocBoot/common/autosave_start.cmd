# autosave_start.cmd
# Required environment variables:
# ${IOC_DATA} - path to IOC data directory
# ${IOC} - IOC name, e.g. sioc-gunb-ssa01

## Start autosave process:
cd("${IOC_DATA}/${IOC}/autosave-req")
makeAutosaveFiles()
create_monitor_set("info_settings.req", 20, "")

# End of file

