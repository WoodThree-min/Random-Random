n=100000;
x=0;
y=0;
pix=zeros(n,2);
neighbour=[-1 -1;-1 0;-1 1;0 -1;0 0;0 1;1 -1;1 0;1 1];
for i =1:n
    r=floor(1+9*rand());
    y=y+neighbour(r,1);
    x=x+neighbour(r,2);
    pix(i,:)=[y x];
end

miny=min(pix(:,1));
minx=min(pix(:,2));

pix(:,1)=pix(:,1)-miny+1;
pix(:,2)=pix(:,2)-minx+1;

maxy=max(pix(:,1));
maxx=max(pix(:,2));

img=zeros(maxy,maxx);
for i=1:n
    img(pix(i,1),pix(i,2))=1;
end
imshow(img)