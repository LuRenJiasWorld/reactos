<?xml version="1.0"?>
<!DOCTYPE module SYSTEM "../../../tools/rbuild/project.dtd">
<module name="dhcp" type="win32cui" installbase="system32" installname="dhcp.exe">
	<include base="dhcp">.</include>
	<include base="dhcp">include</include>

	<!-- FIXME: workarounds until we have a proper oldnames library -->
	<define name="tzset">_tzset</define>
	<define name="close">_close</define>
	<define name="read">_read</define>
	<define name="write">_write</define>
	<define name="NO_OLDNAMES">1</define>

	<library>ntdll</library>
	<library>ws2_32</library>
	<library>iphlpapi</library>
	<library>advapi32</library>
	<file>adapter.c</file>
	<file>alloc.c</file>
	<file>api.c</file>
	<file>compat.c</file>
	<file>dhclient.c</file>
	<file>dispatch.c</file>
	<file>hash.c</file>
	<file>options.c</file>
	<file>pipe.c</file>
	<file>privsep.c</file>
	<file>socket.c</file>
	<file>tables.c</file>
	<file>timer.c</file>
	<file>util.c</file>
	<file>dhcp.rc</file>
	<directory name="include">
		<pch>rosdhcp.h</pch>
	</directory>
</module>
