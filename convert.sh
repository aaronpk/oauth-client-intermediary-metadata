#!/bin/bash

kramdown-rfc2629 oauth-client-intermediary-metadata.md > build/oauth-client-intermediary-metadata.xml

./replacements.php

curl https://xml2rfc.tools.ietf.org/cgi-bin/xml2rfc.cgi -F input=@build/oauth-client-intermediary-metadata.xml -F 'modeAsFormat=txt/ascii' -F type=ascii > build/oauth-client-intermediary-metadata.txt
curl https://xml2rfc.tools.ietf.org/cgi-bin/xml2rfc.cgi -F input=@build/oauth-client-intermediary-metadata.xml -F 'modeAsFormat=html/ascii' -F type=ascii > build/oauth-client-intermediary-metadata.html

# https://datatracker.ietf.org/submit/

