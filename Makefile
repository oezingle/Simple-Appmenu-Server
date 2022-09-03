
main:
	cp /usr/share/dbus-1/interfaces/com.canonical.AppMenu.Registrar.xml interface.xml

	xxd -i interface.xml > interface.h

	rm interface.xml

	$(CXX) $(CXXFLAGS) main.cpp -o main -O3 `pkg-config --cflags --libs glib-2.0 gio-unix-2.0`


example:
	$(CC) example.c -o example `pkg-config --cflags --libs glib-2.0 gio-unix-2.0`

.PHONY: clean
clean:
	rm -f example
	rm -f main