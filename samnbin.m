function rnd=samnbin(r,probability,n)
rnd=zeros(n,1);
fr=zeros(n,1);
for i=1:n
    while(true)
        pV=rand(1,1);
        if(pV>probability)
            rnd(i)=rnd(i)+1;
        else
            fr(i)=fr(i)+1;
        end
        if fr(i)>r
            break;
        end
    end
end
end