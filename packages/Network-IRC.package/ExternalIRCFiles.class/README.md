Handles the management and definition of all external files for IRC client.  This includes logs and channel lists.  Profiles will be handled in the future.

Directory structure will be as follows off of the main Squeak root directory:
irc
  profiles (future)
    profile files for each profile (future)
  servers
    server-name-1
      channels
        channel list for server-1
      logs
        channel traffic log files for each channel logged
    server-name-2
      channels
        channel list for server-2
      logs
        channel traffic log files for each channel logged