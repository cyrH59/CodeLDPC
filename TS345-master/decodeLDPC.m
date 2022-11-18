function [decode_output,c2v,v2c]=decodeLDPC(Nbiteration,LLR,h)
c2v=zeros(size(h,1),size(h,2));
v2c=zeros(size(h,1),size(h,2));
decode_output=zeros(1,length(LLR));

for k=1:Nbiteration
    v2c=Passagev2c(c2v,v2c,h,LLR);
    c2v=Passagec2vBP(v2c,c2v,h);
   
end

for k=1:length(LLR)
    for r=1:size(h,1)
        LLR(k)=LLR(k)+c2v(r,k);
    end
end

for m=1:length(LLR)
    if(LLR(m)>0)
        decode_output(1,m)=0;
    else
        decode_output(1,m)=1;
    end
end

end