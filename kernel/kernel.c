void print(char*message);
void kmain();
void entry() {
    kmain(); 
}
void print(char*message){
char * p_video_buffer = (char*)0xb8000;
char * p_next_char = message;
    while(*p_next_char){
    *p_video_buffer = *p_next_char;
      p_next_char++;
     p_video_buffer += 2;
     
    }
}

void kmain(){
 print("using makefile and tool chain to automate the process of building native operating system");
    while(1){

    }
}
