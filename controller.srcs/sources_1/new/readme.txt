hdlmake.cfg is yaml file that points to all vhdl files or other directories where vhdl files are located
must have hdlmake.cfg file in each directory where hdl files are located (points to hdl files to build)

in folder where top_level.vhdl lives, must have folder "/board/atlys/" where board files live (board.ucf, board.xst, board.ut, board.cfg, board.batch)
this folder structure is needed if using the atlys board, this will change when using the spartan lx9 (lx9 will replace atlys)

Rodrigo's note: the current directory is /board/atlys/ instead of /atlys/board/

run command "~/node-fpga/makestuff/hdlmake/bin/hdlmake.py -t [directory where top_level.vhdl is] -b atlys -p board" while in directory where main hdlmake.cfg file is located
Rodrigo's note: ../../../../../../makestuff/hdlmake/bin/hdlmake.py -t . -b atlys -p board 
el directorio no hace falta porque ya estamos en la carpeta

navigate to directory ~/node-fpga/tx-control"

run command ./nodectrl.py -v 1d50:602b:0002 -i 1443:0007 -p J:D0D2D3D4:/home/node/node-fpga/fpga/node-fpga/controller/controller.srcs/sources_1/new/top_level.xsvf to load file to FPGA

the functions used in nodecrl are defined in node.py