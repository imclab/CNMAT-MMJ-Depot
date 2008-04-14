max v2;#N vpatcher 35 44 989 858;#P origin 22 -7;#P window setfont "Sans Serif" 18.;#N vpatcher 501 91 1101 491;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 237 186 148 196617 /coll <the-name-of-your-coll>;#B color 9;#P message 237 168 90 196617 /coll my-samples;#B color 9;#P comment 160 149 316 196617 � send multibuf a message like:;#P comment 160 134 316 196617 � make a collection that has the name of the text file that was saved;#P comment 148 118 316 196617 To recall:;#P window linecount 0;#P message 108 92 35 196617 write;#P window linecount 1;#P newex 111 49 40 196617 t clear;#N coll current-buffers 1;#P newobj 22 114 110 196617 coll current-buffers 1;#P newex 22 51 84 196617 prepend insert 0;#P inlet 22 31 15 0;#P inlet 111 31 15 0;#P window linecount 0;#P comment 157 48 305 196617 This collection is a list of all of the samples currently loaded into this multibuf. It can be used to reload those samples in the future.;#P comment 147 93 316 196617 < -- click write to save the contents of this collection as a text file.;#P connect 3 0 4 0;#P connect 7 0 5 0;#P connect 4 0 5 0;#P connect 6 0 5 0;#P connect 2 0 6 0;#P pop;#P newobj 546 560 240 196626 p Working with Collections;#B color 5;#P window setfont "Sans Serif" 10.;#P newex 207 472 31 196618 t s b;#P window setfont "Sans Serif" 9.;#P hidden newex 546 58 106 196617 bgcolor 223 238 255;#P bpatcher 24 1 511 76 -18 -68 banner.pat 0 multibuf "this abstraction helps you read sound files into buffer~'s";#P newex 108 677 67 196617 s build-menu;#P comment 261 681 99 196617 clear menu of items;#P message 190 751 114 196617 sss.aiff;#P newex 190 729 60 196617 prepend set;#P comment 205 704 275 196617 use "dump" to store current contents of multibuf in a menu;#P message 227 654 33 196617 clear;#P newex 100 639 63 196617 prepend add;#P user umenu 100 703 100 196647 1 192 719 1;#X add bass.aif;#X add bird.aif;#X add burning.aif;#X add eroica.aif;#X add gbell.aif;#X add gsax.aif;#X add isthatyou.aif;#X add knock.aif;#X add kyorei.aiff;#X add moanin.aiff;#X add sacre.aif;#X add saxcry.aif;#X add shafqat.aif;#X add sss.aiff;#X add thatfile.aif;#X add thisfile.aif;#X add triangle1.aif;#P bpatcher 561 661 319 90 0 0 badge.pat 4 multibuf.help 1.5b "Momeni Wright and Zbyszynski" multibuf 2813;#P comment 746 120 105 196617 drop folders here.;#P user dropfile 732 99 861 157 0;#P user panel 732 99 128 59;#X brgb 255 252 75;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P comment 746 119 105 196617 drop folders here.;#P newex 732 162 80 196617 prepend /folder;#P user dropfile 732 98 861 156 0;#P user panel 732 98 128 59;#X brgb 191 191 191;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P comment 613 120 105 196617 drop sound files here.;#P newex 599 162 68 196617 prepend /file;#P comment 182 567 205 196617 bang when a buffer sucessfully reads a file.;#P button 135 588 15 0;#P newex 135 566 45 196617 sel bang;#P comment 312 219 289 196617 ...........................................load one file (spaces in name);#P message 207 218 103 196617 /file "some file.aiff";#B color 9;#P toggle 207 381 15 0;#P message 207 407 53 196617 /mono \$1;#B color 9;#P comment 332 280 427 196617 .....................................load a bunch of bunches of files itemised in a collection of collections;#P message 207 278 123 196617 /multicoll my-collections;#B color 9;#P newex 117 608 30 196617 print;#P message 207 445 31 196617 dump;#B color 9;#P message 170 617 393 196617 triangle1.aif;#P newex 170 595 60 196617 prepend set;#P comment 364 349 460 196617 ...........................optional second arguement indicates file types \;;#P message 207 348 155 196617 /folder ./samples/uglyay MPG3;#B color 9;#P comment 333 326 490 196617 .....................................you may provide a relative path (starting in the max folder) by starting with a ".";#P comment 391 304 346 196617 .................load all files in a particular folder by providing the folder's path;#P message 207 303 185 196617 /folder Macintosh HD:samples/prettay;#B color 9;#N coll my-samples;#T flags 1 0;#T 1 this-sample.aiff;#T 2 "that sample.aiff";#P newobj 647 249 82 196617 coll my-samples;#P comment 296 252 349 196617 .................................................load a bunch of files itemised in a collection;#P message 207 251 90 196617 /coll my-samples;#B color 9;#P message 207 183 82 196617 /file thatfile.aif;#B color 9;#P window linecount 3;#P comment 43 97 472 196617 � use quotes for file or folder names with spaces \; � samples MUST be in max's search path \; � you can give the same instance of multibuf more than one message.;#P window linecount 1;#P message 207 153 35 196617 /clear;#B color 9;#P message 207 325 125 196617 /folder ./samples/uglyay;#B color 9;#P toggle 134 524 15 0;#P newex 100 545 45 196617 multibuf;#B color 5;#P comment 151 524 352 196617 verbose mode: prints filenames to the max window as they're getting loaded;#P comment 243 154 288 196617 ...................................................................delete all buffers;#P comment 308 184 289 196617 .............................................load one file (no spaces in name);#P comment 237 599 152 196617 name of each file read;#P comment 5 547 94 196617 double-click on me!;#P window setfont "Sans Serif" 12.;#P comment 25 78 111 196620 important notes:;#P window setfont "Sans Serif" 9.;#P comment 261 409 538 196617 ..............................................................toggles loading all channels of a sound file \, or just the first;#P comment 445 363 145 196617 only those types will be loaded;#P user dropfile 599 99 728 157 0;#P user panel 598 99 128 59;#X brgb 191 202 255;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P window linecount 3;#P comment 444 473 452 196617 Each line of the collection says: buffer-n \, filename \; where 'n' is an integer incremented by one with each loaded buffer \; note: each buffer~ object is named so that you can send it messages using 'script send buffer-n';#P window linecount 1;#P comment 239 445 626 196617 ....................................................................multibuf stores all the names of the loaded buffers internally in a collection.;#P fasten 15 0 12 0 212 173 105 173;#P fasten 32 0 12 0 212 426 105 426;#P fasten 30 0 12 0 212 297 105 297;#P fasten 24 0 12 0 212 374 105 374;#P fasten 21 0 12 0 212 319 105 319;#P fasten 18 0 12 0 212 270 105 270;#P fasten 17 0 12 0 212 205 105 205;#P fasten 14 0 12 0 212 342 105 342;#P fasten 39 0 12 0 604 205 105 205;#P fasten 34 0 12 0 212 237 105 237;#P fasten 43 0 12 0 737 205 105 205;#P connect 12 0 50 0;#P connect 50 0 49 0;#P fasten 51 0 49 0 232 697 105 697;#P fasten 50 0 56 0 105 673 113 673;#P fasten 51 0 56 0 232 673 113 673;#P fasten 59 0 12 1 212 507 122 507;#P connect 12 0 29 0;#P connect 13 0 12 2;#P connect 12 1 36 0;#P connect 36 0 37 0;#P connect 36 1 26 0;#P connect 26 0 27 0;#P connect 49 1 53 0;#P connect 53 0 54 0;#P connect 33 0 32 0;#P connect 28 0 59 0;#P connect 59 1 51 0;#P hidden connect 36 1 60 0;#P connect 3 0 39 0;#P connect 46 0 43 0;#P hidden connect 15 0 60 1;#P pop;