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

echo_and_run cd "/home/caesar/Desktop/ROS/ROS_Serial_test/src/geometry2/tf2_py"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/caesar/Desktop/ROS/ROS_Serial_test/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/caesar/Desktop/ROS/ROS_Serial_test/install/lib/python2.7/dist-packages:/home/caesar/Desktop/ROS/ROS_Serial_test/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/caesar/Desktop/ROS/ROS_Serial_test/build" \
    "/usr/bin/python2" \
    "/home/caesar/Desktop/ROS/ROS_Serial_test/src/geometry2/tf2_py/setup.py" \
    egg_info --egg-base /home/caesar/Desktop/ROS/ROS_Serial_test/build/geometry2/tf2_py \
    build --build-base "/home/caesar/Desktop/ROS/ROS_Serial_test/build/geometry2/tf2_py" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/caesar/Desktop/ROS/ROS_Serial_test/install" --install-scripts="/home/caesar/Desktop/ROS/ROS_Serial_test/install/bin"
