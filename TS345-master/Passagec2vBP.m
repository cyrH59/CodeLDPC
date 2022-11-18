function [c2v]=Passagec2vBP(v2c,c2v,h,LLR) %rouge

for k=1:size(h,1)
    for j=1:size(h,2)
        if(h(k,j)==1)
            tmp1=[];
            for s=1:size(h,2)
                
                if (s~=j && h(k,s)==1)

                    tmp1=[tmp1 v2c(k,s)];

                end
            end
            if(length(tmp1)~=0)
                tmp2=1;
                for d=1:length(tmp1)
                    tmp2=tmp2*tanh(tmp1(d)/2);
                end
                c2v(k,j)=2*atanh(tmp2);
            end

        end
    end
end

end