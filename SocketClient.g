// socket client 

// ./gaspardl console g/consoleinc.g g/SocketClient.g ws2_32.lib


global uint16_t WSA_VERSION = cast uint16_t 0x202;



global uint8_t WSADATA[408]; // en fait structure WSADATA


global uint64_t socket_client = 0; 

struct sockaddr_in = begin 

    element uint16_t  sin_family;
    element uint16_t  sin_port;

    element uint8_t   sin_addr[4]; // addr

    element uint8_t sin_zero[8];

end

global uint32_t status =cast uint32_t  0;
global uint32_t AF_INET = cast uint32_t 2;
global uint32_t SOCK_STREAM = cast uint32_t 1;
global uint32_t IPPROTO_TCP = cast uint32_t 6;

global uint16_t tmp_short = cast uint16_t 0;

global struct sockaddr_in serverAddr;


global string ok_ = "ok !!! \n";

global uint32_t SOCKET_ERROR = cast uint32_t 0xffffffff;


global uint64_t reference_ptr = 0;


prototype procedure htons return uint16_t = begin argument begin argument uint16_t da; end end 

prototype procedure WSAStartup return uint32_t = begin 

argument begin 

argument uint16_t un;
argument ptr uint64_t ref_deux;
end 
end

prototype procedure socket return uint64_t = begin 

argument begin 

argument uint32_t af;
argument uint32_t type;
argument uint32_t protocol;

end
end

prototype procedure  WSACleanup return uint32_t = begin 
end

prototype procedure inet_pton return uint32_t = begin 

argument begin 

argument uint32_t family;
argument ptr uint8_t ip_str;
argument ptr uint64_t refptr_;

end


end


prototype procedure closesocket return uint32_t = begin 

argument begin 

argument uint64_t sock;

end


end

prototype procedure send return uint32_t = begin 

argument begin 


argument uint64_t socket;

argument ptr uint8_t data;
argument uint32_t size_data; 
argument uint32_t flags ;

end


end


prototype procedure WSAGetLastError return uint32_t = begin 



end


prototype procedure connect return uint32_t = begin 

argument begin 


argument uint64_t socket; 
argument ptr uint64_t sockaddr_ref;
argument uint32_t size;

end

end

global uint16_t PORT = cast uint16_t 5000;

global string server_ip = "127.0.0.1";


global string TexteSend = "Texte depuis Gaspard language !!! \n";

global uint32_t TexteSendSize = cast uint32_t 37;

global uint32_t sizeserveradrr = cast uint32_t 0;

global string erreur_str = "GaspardSOCKET ERROR %s %x:%d \n";
global string connect___ = "CONNECT FUNC";
global string send___ = "SEND FUNC";

procedure main return uint32_t = begin 




call WSAStartup return status WSA_VERSION reference WSADATA;


if status != cast uint32_t 0 begin 


return cast uint32_t 1;



end

status = cast uint32_t 0;




call socket return socket_client AF_INET SOCK_STREAM IPPROTO_TCP;


if socket_client == NULL begin 

call WSACleanup;

return cast uint32_t 1;


end 

    serverAddr.sin_family = AF_INET;
 //   serverAddr.sin_port = htons(PORT); :

    call htons return tmp_short  PORT;
    serverAddr.sin_port = tmp_short;
    call inet_pton return status AF_INET  server_ip  reference  serverAddr.sin_addr;


    if status <= cast uint32_t 0 begin 


    call closesocket socket_client;
    call WSACleanup; 
    return cast uint32_t 1;
     end

    // connect 

    sizeserveradrr =  cast uint32_t sizeof serverAddr;
    call connect return status  socket_client reference serverAddr sizeserveradrr;

    if status < cast uint32_t 0 begin 


    call WSAGetLastError return status;

    call printf erreur_str connect___ status status;
    call closesocket socket_client;
    call WSACleanup; 
    return cast uint32_t 1;



    end
    
    status = cast uint32_t 0;


    call send return status socket_client TexteSend  TexteSendSize ZER0_32;
    if status <= cast uint32_t 0 begin 


    call WSAGetLastError return status;

    call printf erreur_str send___ status status;
    call closesocket socket_client;
    call WSACleanup; 
    return cast uint32_t 1;
     end

    call closesocket socket_client;
    call WSACleanup;

    call printf ok_;
    return cast uint32_t 0;
end