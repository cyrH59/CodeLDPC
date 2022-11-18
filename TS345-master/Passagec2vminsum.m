function [c2v]=Passagec2vminsum(v2c,c2v,h) %rouge

for k=1:size(h,1)
    for j=1:size(h,2)
        if(h(k,j)==1)
            tmp=[];
            for s=1:size(h,2)
                
                if (s~=j && h(k,s)==1)

                    tmp=[tmp v2c(k,s)];

                end
            end
            if(length(tmp)~=0)
                for d=1:length(tmp)
                    if (d==1)
                        c2v(k,j)=sign(tmp(d));
                    else
                        c2v(k,j)=c2v(k,j)*sign(tmp(d));
                    end
                end
                c2v(k,j)=c2v(k,j)*min(abs(tmp));
            end

        end
    end
end

end