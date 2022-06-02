#!/bin/bash
which zip &> /dev/null
if [ $? -ne 0 ]; then
    echo please install zip utility
    exit 1
fi
ZIPTARGET="randori.zip"

zip $ZIPTARGET gcp_audit_rules/gcp_unused_regions.*
zip $ZIPTARGET gsuite_activityevent_rules/gsuite_login_type.*
zip $ZIPTARGET gsuite_activityevent_rules/gsuite_low_severity_rule.*

echo please uploade $ZIPTARGET
