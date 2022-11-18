function [v2c]=Passagev2c(c2v,v2c,h,LLR) %vert

for k=1:size(h,1)
    for j=1:size(h,2)
        if(h(k,j)==1)
            v2c(k,j)=LLR(j);
            for s=1:size(h,1)
                if (s~=k && h(s,j)==1)
                    v2c(k,j)=v2c(k,j)+c2v(s,j);
                end
            end
        end
    end
end

end