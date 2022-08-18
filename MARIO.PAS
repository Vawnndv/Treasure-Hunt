uses crt;
var a,b:array [1..100,1..100] of char;
    i,j:integer;
    x,y,d,d1:integer;
    t:char;
    s,s1:string;
procedure youwin;
begin
     a[3,3]:='#';a[3,9]:='#';a[3,13]:='#';a[3,14]:='#';
     a[4,3]:='#';a[4,9]:='#';a[4,12]:='#';a[4,15]:='#';a[4,19]:='#';a[4,24]:='#';
     a[5,4]:='#';a[5,8]:='#';a[5,11]:='#';a[5,16]:='#';a[5,19]:='#';a[5,24]:='#';
     a[6,4]:='#';a[6,8]:='#';a[6,11]:='#';a[6,16]:='#';a[6,19]:='#';a[6,24]:='#';
     a[7,5]:='#';a[7,7]:='#';a[7,10]:='#';a[7,17]:='#';a[7,19]:='#';a[7,24]:='#';
     a[8,5]:='#';a[8,7]:='#';a[8,10]:='#';a[8,17]:='#';a[8,19]:='#';a[8,24]:='#';
     a[9,6]:='#';a[9,11]:='#';a[9,16]:='#';a[9,19]:='#';a[9,24]:='#';
     a[10,6]:='#';a[10,11]:='#';a[10,16]:='#';a[10,19]:='#';a[10,20]:='#';a[10,23]:='#';a[10,24]:='#';
     a[11,6]:='#';a[11,12]:='#';a[11,15]:='#';a[11,20]:='#';a[11,21]:='#';a[11,22]:='#';a[11,23]:='#';
     a[12,6]:='#';a[12,13]:='#';a[12,14]:='#';a[12,21]:='#';a[12,22]:='#';
     a[14,15]:='#';
     a[16,2]:='#';a[16,7]:='#';a[16,12]:='#';a[16,15]:='#';a[16,18]:='#';a[16,19]:='#';a[16,24]:='#';
     a[17,2]:='#';a[17,7]:='#';a[17,12]:='#';a[17,15]:='#';a[17,18]:='#';a[17,20]:='#';a[17,24]:='#';
     a[18,2]:='#';a[18,7]:='#';a[18,12]:='#';a[18,15]:='#';a[18,18]:='#';a[18,20]:='#';a[18,24]:='#';
     a[19,3]:='#';a[19,6]:='#';a[19,8]:='#';a[19,11]:='#';a[19,15]:='#';a[19,18]:='#';a[19,21]:='#';a[19,24]:='#';
     a[20,3]:='#';a[20,6]:='#';a[20,8]:='#';a[20,11]:='#';a[20,15]:='#';a[20,18]:='#';a[20,21]:='#';a[20,24]:='#';
     a[21,3]:='#';a[21,6]:='#';a[21,8]:='#';a[21,10]:='#';a[21,11]:='#';a[21,15]:='#';a[21,18]:='#';
     a[21,22]:='#';a[21,24]:='#';
     a[22,4]:='#';a[22,5]:='#';a[22,9]:='#';a[22,10]:='#';a[22,15]:='#';a[22,18]:='#';a[22,22]:='#';a[22,24]:='#';
     a[23,4]:='#';a[23,10]:='#';a[23,15]:='#';a[23,18]:='#';a[23,23]:='#';a[23,24]:='#';
     for i:=1 to 24 do
     begin
         for j :=1 to 25 do
             if (i=21)and(j=22) then begin textcolor(red);write(a[i,j]:3) end else
             if (i=2)and(j=22) then begin textcolor(green);write(a[i,j]:3) end else
                if (i=2)and(j=23) then begin textcolor(green);write(a[i,j]:3) end else
                   if (i=2)and(j=24) then begin textcolor(green);write(a[i,j]:3) end else
             if (i=x)and(j=y) then begin textcolor(red);write(a[x,y]:3);end
             else if a[i,j]='0' then
                  begin textcolor(yellow); write(a[i,j]:3);end else
                 if (i=1)or(i=24)or(j=1)or(j=25) then
                      begin
                      textcolor(yellow);
                      a[i,j]:='(';
                      write(a[i,j]:3);
                      end else
                begin
                      if (a[i,j]='#') then begin textcolor(red);
                                               a[i,j]:='#';
                                               write(a[i,j]:3);
                                               end else
                      begin
                      textcolor(green);
                      a[i,j]:=' ';
                      write(a[i,j]:3);
                      end
                end;
         writeln
     end
end;
procedure nhap;
begin
     a[1,4]:='(';a[1,8]:='(';
     a[2,4]:='(';a[2,8]:='(';
     a[3,4]:='(';a[3,8]:='(';a[3,12]:='(';
     a[4,4]:='(';a[4,6]:='(';a[4,7]:='(';a[4,8]:='(';a[4,12]:='(';
     a[5,1]:='(';a[5,2]:='(';a[5,4]:='(';a[5,12]:='(';a[5,23]:='(';
     a[6,12]:='(';a[6,15]:='(';a[6,16]:='(';a[6,17]:='(';a[6,18]:='(';
     a[6,19]:='(';a[6,20]:='(';a[6,21]:='(';
     a[7,5]:='(';a[7,6]:='(';a[7,7]:='(';a[7,12]:='(';a[7,18]:='(';
     a[8,12]:='(';a[8,18]:='(';a[8,20]:='(';a[8,21]:='(';a[8,22]:='(';a[8,23]:='(';
     a[9,1]:='(';a[9,2]:='(';a[9,3]:='(';a[9,4]:='(';a[9,5]:='(';a[9,6]:='(';a[9,7]:='(';
     a[9,10]:='(';a[9,18]:='(';
     a[10,10]:='(';a[10,18]:='(';
     a[11,10]:='(';a[11,18]:='(';
     a[12,1]:='(';a[12,2]:='(';a[12,3]:='(';a[12,4]:='(';a[12,5]:='(';a[12,6]:='(';
     a[12,10]:='(';a[12,13]:='(';a[12,14]:='(';a[12,15]:='(';a[12,16]:='(';
     a[13,3]:='(';
     a[14,17]:='(';a[14,18]:='(';a[14,19]:='(';a[14,20]:='(';a[14,21]:='(';a[14,22]:='(';
     a[14,23]:='(';a[14,25]:='(';
     a[15,1]:='(';a[15,2]:='(';a[15,3]:='(';a[15,4]:='(';a[15,5]:='(';a[15,6]:='(';
     a[15,7]:='(';a[15,8]:='(';a[15,9]:='(';a[15,10]:='(';a[15,11]:='(';
     a[16,6]:='(';a[16,14]:='(';a[16,18]:='(';a[16,19]:='(';a[16,20]:='(';
     a[16,21]:='(';a[16,22]:='(';a[16,23]:='(';
     a[17,6]:='(';a[17,14]:='(';a[17,21]:='(';
     a[18,6]:='(';a[18,10]:='(';a[18,14]:='(';a[18,21]:='(';
     a[19,6]:='(';a[19,10]:='(';a[19,14]:='(';a[19,21]:='(';
     a[20,2]:='(';a[20,3]:='(';a[20,4]:='(';a[20,5]:='(';a[20,6]:='(';a[20,10]:='(';
     a[20,11]:='(';a[20,12]:='(';a[20,14]:='(';a[20,17]:='(';a[20,21]:='(';
     a[21,6]:='(';a[21,10]:='(';a[21,14]:='(';a[21,17]:='(';a[21,21]:='(';
     a[22,10]:='(';a[22,14]:='(';a[22,17]:='(';a[22,21]:='(';a[22,22]:='(';
     a[22,23]:='(';a[22,24]:='(';a[22,25]:='(';
     a[23,14]:='(';a[23,17]:='(';a[23,21]:='(';
     a[24,2]:='(';a[24,3]:='(';a[24,4]:='(';a[24,5]:='(';a[24,6]:='(';a[24,7]:='(';
     a[24,8]:='(';a[24,17]:='(';
     a[25,17]:='(';
     a[1,21]:='0';a[1,22]:='0';a[1,23]:='0';a[1,24]:='0';a[1,25]:='0';
     a[2,21]:='0';a[2,25]:='0';
     a[3,21]:='0';a[3,25]:='0';
     a[4,21]:='0';a[4,22]:='0';a[4,23]:='0';a[4,24]:='0';a[4,25]:='0';
     str(d,s);
     a[3,22]:=s[1];a[3,23]:=s[2];a[3,24]:=s[3];{Diem so}
     str(d1,s1);
     a[2,22]:=s1[1];a[2,23]:=s1[2];a[2,24]:=s1[3];
     a[21,22]:='W';{kho bau}
     a[22,5]:='/';a[4,16]:='/';a[7,3]:='/';a[6,9]:='/'; {bay}
     a[10,14]:='/';a[13,7]:='/';a[13,20]:='/'; {bay}
     a[18,3]:='/';a[18,13]:='/';a[19,18]:='/';{bay}
     for i:=1 to 24 do
     begin
         for j :=1 to 25 do
             if (i=21)and(j=22) then begin textcolor(red);write(a[i,j]:3) end else {kho bau}
             if a[i,j]='/' then begin textcolor(white);write (a[i,j]:3) end else {bay}
             if a[i,j]=' ' then write(a[i,j]:3) else {bien mat}
             if (i=3)and(j=22) then begin textcolor(green);write(a[i,j]:3) end else
                if (i=3)and(j=23) then begin textcolor(green);write(a[i,j]:3) end else
                   if (i=3)and(j=24) then begin textcolor(green);write(a[i,j]:3) end else
             if (i=2)and(j=22) then begin textcolor(green);write(a[i,j]:3) end else
                if (i=2)and(j=23) then begin textcolor(green);write(a[i,j]:3) end else
                   if (i=2)and(j=24) then begin textcolor(green);write(a[i,j]:3) end else
             if (i=x)and(j=y) then begin textcolor(red);write(a[x,y]:3);end
             else if a[i,j]='0' then
                  begin textcolor(yellow); write(a[i,j]:3);end else
                 if (i=1)or(i=24)or(j=1)or(j=25) then
                      begin
                      textcolor(yellow);
                      a[i,j]:='(';
                      write(a[i,j]:3);
                      end else
                begin
                      if (a[i,j]='(') then begin textcolor(blue);
                                               a[i,j]:='(';
                                               write(a[i,j]:3);
                                               end else
                      begin
                      textcolor(white);
                      a[i,j]:='*';
                      write(a[i,j]:3);
                      end
                end;
         writeln
     end
end;
procedure xuli;
var t,tam:char;
begin
     x:=3;y:=3;
     d:=100;d1:=0;
     repeat
     t:=readkey;
     if t='w' then if a[x-1,y]<>'(' then
        if a[x-1,y]<>'0' then
           if a[x-1,y]='/' then begin x:=3;y:=3;end else
              begin tam:=a[x-1,y];a[x,y]:=' ';a[x-1,y]:='A';x:=x-1;y:=y;end;
     if t='a' then if a[x,y-1]<>'(' then
        if a[x,y-1]<>'0' then
           if a[x,y-1]='/' then begin x:=3;y:=3;end else
              begin tam:=a[x,y-1];a[x,y]:=' ';a[x,y-1]:='A';x:=x;y:=y-1;end;
     if t='d' then if a[x,y+1]<>'(' then
        if a[x,y+1]<>'0' then
           if a[x,y+1]='/' then begin x:=3;y:=3;end else
              begin tam:=a[x,y+1];a[x,y]:=' ';a[x,y+1]:='A';x:=x;y:=y+1;end;
     if t='s' then if a[x+1,y]<>'(' then
        if a[x+1,y]<>'0' then
           if a[x+1,y]='/' then begin x:=3;y:=3;end else
              begin tam:=a[x+1,y];a[x,y]:=' ';a[x+1,y]:='A';x:=x+1;y:=y;end;
     if tam='*' then inc(d1);
     d:=d-1;
     if (x=21)and(y=22)and(d>=0) then begin youwin;t:=#13;end else
        if (d>=0) then nhap else begin write('Thua cuoc');t:=#13;end;
     until t=#13;
end;
begin
     clrscr;
     xuli;
     readln
end.