//Shell to Action Script Conversion Utility
delete __appendfile

appendfile #!/bin/bash
appendfile systemctl status httpd
appendfile if [ $? -ne 0 ]
appendfile then
appendfile echo "HTTPD Is NOT Running....... we can start PATCHING "
appendfile #
appendfile # We can put some scripts/code anything. This section will only execute when services are down
appendfile #
appendfile else
appendfile echo "HTTPD Is Running.....We cant start PATCHING"
appendfile fi

//modify appendfile to allow execution
wait chmod 555 "{(client folder of current site as string) & "/__appendfile"}

//execute shell script as written
wait "{(client folder of current site as string) & "/__appendfile"}"
