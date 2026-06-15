prototype procedure rand return uint32_t /* erreur*/ = begin 


end


prototype procedure srand = begin 


argument begin 

argument uint32_t seed;


end
end



prototype procedure time return uint64_t = begin 


argument begin 

argument uint64_t time_ ;


end



end


global uint64_t ZERO = 0;

global uint32_t RAND_MAX = cast uint32_t 0x7fff;



/*

BOOLEAN RtlGenRandom(
  [out] PVOID RandomBuffer,
  [in]  ULONG RandomBufferLength
);


*/

prototype procedure RtlGenRandom return uint32_t = begin 

argument begin 


argument ptr uint64_t RandomBuffer;
argument  uint64_t RandomBufferLength;

end



end

prototype procedure abs return uint32_t = begin 

argument begin 

argument uint32_t val;

end

end

// pour corriger un énorme bug au moment de LINK :
procedure __main = begin end