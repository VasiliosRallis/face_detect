Personal Reflection
==================== 
Imperial Login: vgr16 
Group Name: Cipher 
  
Group Working
-------------
I don't think there was a lot of synergy. One of the major problems was the quality of the code was quite low initially. This force us to rewrite most of the code (e.g. some of the initial commits that George was making could not even compile). Also, since I wrote must of the memory, testbench and essentially the control flow of the simulator, it was hard for George to initially understand the structure of the simulator. 
  
Time Management
---------------
The time management of the project went quite well. To be honest, we just worked a lot in the beginning so we were able to get some minimum functionality quite early. It took me a while to understand how the actual simulator was going to be structured and how to use all the tools which I was not familiar with (i.e. makefiles and the cross-compiler). But after I got a basic understanding of how those worked, I was pretty confident that we could actually code the project in a reasonable amount of time. 
  
Software Skills
--------------- 
This is one of the first "large scale" projects were we actually had to think about structure everything since not a lot of information was given. This allowed us to make decisions for the first time that we would later regret and try to fix. For example, we used int32_t for a lot of the state elements where we should have just used uint32_t. Also, the testbench should have been written in BASH and not c++. Furthermore, instead on initialising a the mips_state.ram as a massive vector, I should have just made 3 smaller vectors and have an address translator functions since most of the vector cannot be used. 
  
Tools and Infrastructure
------------------------
We should have automated the creation of the tests instead of trying to write them all in assembly. To be honest, I thought that we should just make a lot of c tests since this would allow us to test multiple instructions at the same time. However, in hindsight this was not that smart since it's very hard to find what went wrong in the C tests. This project really helped me realise the importance of automation tools such as makefiles when dealing with a large project. 
  
Understanding of Computer Architecture
--------------------------------------
Working with the assembler allowed us to understand why certain instructions have the restrictions that they do (e.g. the branch delay slot or the structure of the lwl and lwr). Furthermore, through working at such a low level, I was able to better understand the "interface" between the HW and SW. Finally, I was able to better understand how the ISA gives some freedom of implementation to the micro-architecture designer (e.g. MFI MFLO before a DIV have "undefined" results). 
