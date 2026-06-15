
// avec Win32.lib  -> juste c'est un petit HOOKER pour gérer les structs. 

// ma gestion des structs n'est pas bonne et je suis pas d'accord avec moi même

// donc j'utilise un HOOKER ! c'est temporaire !

// pour compiler gaspardl graphic Wintestinc.g Wintest4.g Win32.lib


// exemple de création d'une fenetre GaspardOS Win32 depuis GaspardOS LANG

global string message1 = "mega texte lol \n";
global uint32_t width ;
global uint32_t height ;
global uint64_t ret_un = 0x1;
global uint64_t status2 = 0;
global string message2 = "addr glang func 0x%lx : \n";

global string message1 = "Gaspard CALL HWND :  0x%x \n";




// #define WM_DESTROY                      0x0002


global uint32_t ZERO = cast uint32_t 0;

global uint64_t addr_func = 0;



global wstring combo_class = L"COMBOBOX";
global wstring Window_name = L"GASPARDOS";





// x_combo y_combo width_combo height_combo num_unique_combo
//             10, 10,                // x, y
//            200, 200,              // largeur, hauteur liste

global uint32_t x_combo = cast uint32_t 10;
global uint32_t y_combo = cast uint32_t 10;
global uint32_t width_combo = cast uint32_t 200;
global uint32_t height_combo = cast uint32_t 200;
global uint32_t num_unique_combo = cast uint32_t 133;


global string message_wmcreate = "message wmcrate combo box ????";


// bouton : 


global wstring texte_bouton_wstr = L"texte bouton";
global uint32_t x_bouton1 = cast uint32_t 10;
global uint32_t y_bouton1 = cast uint32_t 50;
global uint32_t width_bouton1 = cast uint32_t 110;
global uint32_t height_bouton1 = cast uint32_t 50;
global uint64_t num_unique_bouton1 =  134;

// fin bouton

// input 1: 


global wstring texte_input_wstr = L"texte  lol";
global uint32_t x_input1 = cast uint32_t 10;
global uint32_t y_input1 = cast uint32_t 135;
global uint32_t width_input1 = cast uint32_t 110;
global uint32_t height_input1 = cast uint32_t 50;
global uint64_t num_unique_input1 =  135;



// fin input 1


procedure WindowHandler1 return int64_t = begin 


//typedef int (*GaspardOSH)(HWND hwnd,unsigned int msg,uint64_t wParam,uint64_t lParam);

argument begin 


argument uint64_t hwnd;
argument uint32_t msg;
argument uint64_t wParam;
argument int64_t lParam;



end


if hwnd == 0 begin 

return 0;

end


if msg == WM_DESTROY begin 


call PostQuitMessage  ZERO;


return 0;
end 


if msg == WM_CREATE begin 


// créer combo 

call GaspardOSCreateCombo hwnd x_combo y_combo width_combo height_combo num_unique_combo;

call GaspardOSCreateButton hwnd texte_bouton_wstr x_bouton1 y_bouton1 width_bouton1 height_bouton1 num_unique_bouton1;
//gaspardoscombo add texte 

call GaspardOSCreateInput hwnd texte_input_wstr  x_input1 y_input1 width_input1 height_input1 num_unique_input1;

call printf message_wmcreate;
return 0;


end

call printf message1 hwnd;

call DefWindowProcW return status2  hwnd msg wParam lParam ;
return status2;
end


/* cobobox: */






procedure WinMain = begin 


argument begin 


argument uint64_t hInst;
argument uint64_t hPrev;
argument ptr uint8_t cmd;
argument uint32_t show;



end

width = cast uint32_t 640;
height = cast uint32_t 480;

addr_func = WindowHandler1;
call printf message2 addr_func;

call printf message1;
call GaspardOSCreateWindow hInst show width height WindowHandler1;


end