
// pour compiler : gaspardl console Consoleinc.g Karla.g
// la sortie est gaspardfinal.exe
global string karla_str = "Bonjour Karla, la meilleure programmeuse SQL du monde ! %d \n";
global uint64_t compteur =  0;

// tellement GaspardOS LANG est typé qu'ont peut faire une base sql ????
// avis aux Karla hahah...


procedure main return uint32_t = begin 


    argument begin 

        argument  uint32_t sert_a_rien1;
        argument uint32_t sert_a_rien2 ; 
    end


for eternity begin 


compteur = compteur + 1;

call printf karla_str compteur;


end

return cast uint32_t 0;

end
