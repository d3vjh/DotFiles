
## Resultado Final

![Screenshoot](/img/Screenshot.png)

Esta es una guia muy sencilla, con los pasos mas importantes a la hora de montar un entorno profesional de trabajo, utilizando Parrot OS - Security Edition

## Primeros pasos

1.  Vamos a realizar la descarga y la instalación con total normalidad.

2.

Instalaremos los siguientes paquetes
```bash
apt install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev
```

Posteriormente, aplicaremos una actualización del sistema con el comando ‘apt update‘. Acto seguido, tenéis que dirigiros a la carpeta de descargas de vuestro equipo y descargar los proyectos ‘bswpm‘ y ‘sxhkd‘ con los siguientes comandos:

```bash
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
```

Para instalar cada uno de estos, lo que debemos meternos en ambos directorios por separado y ejecutar los comandos `make` y `sudo make install`.

Finalmente, instalaremos ‘*bspwm*‘ con el comando `sudo apt install bspwm`.
  
3. 

Se retocan los archivos `sxhkdrc` y `bspwm_resize`

4. (Instalación de la polybar)

```bash
apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libuv1-dev libnl-genl-3-dev
```

Luego clonaremos el repositorio

```bash
git clone –recursive https://github.com/polybar/polybar [Son 2 guiones donde pone ‘recursive‘]

```

Ingresamos al repositorio y ejecutamos

```bash
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
```

5. Instalación de Picom y Sxhkdrc

```bash
apt install meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev

```

clonamos el repositorio

```bash
git clone https://github.com/ibhagwan/picom.git
```

Una vez hecho, nos metemos en el directorio creado y ejecutamos los siguientes comandos:
```bash
git submodule update –init –recursive [Son 2 guiones donde pone ‘init‘ y ‘recursive‘]
meson –buildtype=release . build [Son 2 guiones donde pone ‘buildtype‘] 
ninja -C build
sudo ninja -C build install
```

Luego lo hacemos desde el gestor de paquetes
```bash
apt install rofi
```

6. Configurando las fuentes, la Kitty e instalación de Feh

Instalamos la fuente Hack Nerd Font y enviarlo a `usr/local/share/fonts`

entramos a la configuracion de la kitty y configuramos el `color.ini` y la `kitty.conf`

Instalamos la `zsh`

como root vamos a la carpeta `/opt/kitty/` y asignamos la carpeta al usuario

0.19.3

Instalamos la kitty desde el repositorio 




