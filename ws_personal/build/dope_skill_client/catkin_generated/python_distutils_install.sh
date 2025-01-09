#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bruno/ros_ws/ws_personal/src/dope_skill/dope_skill_client"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/bruno/ros_ws/ws_personal/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bruno/ros_ws/ws_personal/install/lib/python3/dist-packages:/home/bruno/ros_ws/ws_personal/build/dope_skill_client/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bruno/ros_ws/ws_personal/build/dope_skill_client" \
    "/usr/bin/python3" \
    "/home/bruno/ros_ws/ws_personal/src/dope_skill/dope_skill_client/setup.py" \
     \
    build --build-base "/home/bruno/ros_ws/ws_personal/build/dope_skill_client" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/bruno/ros_ws/ws_personal/install" --install-scripts="/home/bruno/ros_ws/ws_personal/install/bin"
