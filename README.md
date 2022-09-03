
# Simple-Appmenu-Server

A dead simple DBus server using Glib/Gio to publish the com.canonical.AppMenu.Registrar DBus interface over dbus.

## What does it do?
Simply put, QT and 'impure' GTK apps can publish their DBus service names to the com.canonical.AppMenu.Registrar database, indexed by their X11 Window ID, so we can grab their menus at a later date. Pure GTK apps generally do not have this behavior, unless they haven't been updated since Unity was king Desktop Environment.