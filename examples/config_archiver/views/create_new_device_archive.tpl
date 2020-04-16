<html>
<body>
    <h1>
        Create New Device Archive
    </h1>
        <p>
    % if bool(dnac.name):
        Connected to DNA Center cluster: <b>{{dnac.name}}</b>
    % elif bool(dnac.ip):
        Connected to DNA Center cluster: <b>{{dnac.ip}}</b>
    % else:
        Cannot connect to DNA Center cluster.  Please set the FQDN or cluster IP in dnac_config.
    %end
    <p>
    Create archive for <em>{{host}}</em>
    <p>
    Select the configuration files to add:<br>
    <form action="/add_new_device_archive_version" method="post">
        <input type="checkbox" name="{{host}}_running" value="running">Running Config</input><br>
        <input type="checkbox" name="{{host}}_startup" value="startup">Startup Config</input><br>
        <input type="submit" value="Submit">
    </form>
    <form action="/create_new_archive" method="get">
        <input type="submit" value="Cancel">
    </form>
    </table>
</body>