global string name____ = "wingtest3inc.g";

prototype procedure GaspardOSCreateWindow return uint32_t = begin 

argument begin 


argument uint64_t hInst;
argument uint32_t nCmdShow;
argument uint32_t width;
argument uint32_t height;
argument ptr uint64_t HandlerFunc;

end


end


//HWND GaspardOSCreateText(HWND hWnd,wchar_t *msg, int x,int y ,int width,int height)
// a faire 
prototype procedure GaspardOSCreateText  return uint64_t = begin 

argument begin

argument uint64_t hwnd;
argument ptr uint16_t msg;
argument uint32_t x;
argument uint32_t y;
argument uint32_t width;
argument uint32_t height;

end


end

prototype procedure DefWindowProcW return int64_t = begin 


//DefWindowProc
argument begin 


argument uint64_t hwnd;
argument uint32_t msg;
argument uint64_t wParam;
argument int64_t lParam;



end

end

prototype procedure PostQuitMessage = begin

argument begin 


argument int32_t exit_code;


end

 end



global uint32_t WM_DESTROY = cast uint32_t 0x0002;
global uint32_t WM_CREATE = cast uint32_t 0x0001;




prototype procedure CreateWindowExW return uint64_t = begin 

/*

HWND
WINAPI
CreateWindowExW(
    _In_ DWORD dwExStyle,
    _In_opt_ LPCWSTR lpClassName,
    _In_opt_ LPCWSTR lpWindowName,
    _In_ DWORD dwStyle,
    _In_ int X,
    _In_ int Y,
    _In_ int nWidth,
    _In_ int nHeight,
    _In_opt_ HWND hWndParent,
    _In_opt_ HMENU hMenu,
    _In_opt_ HINSTANCE hInstance,
    _In_opt_ LPVOID lpParam);
 */
argument begin 


argument uint64_t dwExStyle;
argument ptr uint16_t lpClassName;
argument ptr uint16_t lpWindowName;
argument uint64_t dwStyle;
argument uint32_t X;
argument uint32_t Y;
argument uint32_t nWidth;
argument uint32_t nHeight;

argument uint64_t hWndParent;
argument uint64_t hMenu;
argument uint64_t hInstance;
argument ptr uint64_t lpParam;

end



end


// combobox : 


/*




        HWND hCombo = CreateWindowExW(
            0,                      // dwExStyle
            L"COMBOBOX",            // lpClassName (classe système)
            NULL,                   // lpWindowName (pas de texte initial)
            WS_CHILD | WS_VISIBLE | WS_VSCROLL
            | CBS_DROPDOWNLIST,     // style
            10, 10,                // x, y
            200, 200,              // largeur, hauteur liste
            hwnd,             // fenêtre parente
            (HMENU)133,      // identifiant de contrôle
            (HINSTANCE)GetWindowLongPtr(hwnd, GWLP_HINSTANCE),
            NULL
        );



*/
/// Permet de créer une liste (COMBO) dans une fenetre
prototype procedure GaspardOSCreateCombo return uint64_t = begin 

//GaspardOSCreateCombo(HWND Parent,int x, int y,int width, int height, int num_unique) {


argument begin 

//

argument uint64_t Parent; //hwnd
argument uint32_t x;
argument uint32_t y;

argument uint32_t width;
argument uint32_t height;
argument uint32_t num_unique;


end



end


/// Permet de créer un bouton : 

prototype procedure GaspardOSCreateButton return uint64_t  = begin 


argument begin 


// HWND GaspardOSCreateButton(HWND fenetre_parent, LPCWSTR texte_bouton, int x, int y, int width, int height, HMENU val) {

argument uint64_t fenetre_parent;
argument ptr uint16_t texte_bouton;
argument uint32_t x;
argument uint32_t y;

argument uint32_t width;
argument uint32_t height;
argument uint64_t val;
end

end 


/// Permet de créer un input texte : 

prototype procedure GaspardOSCreateInput return uint64_t  = begin 


argument begin 


//HWND GaspardOSCreateInput(HWND fenetre_parent, LPCWSTR texte_input, int x, int y, int width, int height, HMENU val) {


argument uint64_t fenetre_parent;
argument ptr uint16_t texte_input;
argument uint32_t x;
argument uint32_t y;

argument uint32_t width;
argument uint32_t height;
argument uint64_t val;
end

end 


