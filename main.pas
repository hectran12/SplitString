type
    get = record
            start : integer;
            ends : integer;
          end;
        
var Text : string; (*Văn bản cần tách*)
    Result : array[0..1000] of string; (*Kí tự cần tách*)
    amRes : integer; (*Số phần tử*)
    status : boolean; (*Trạng thái tách*)
    a : integer; (*Support for*)
    Session : string; (*support length*)
    liChar : array[0..1000] of string;
    amAC : integer;
    
    (*explode variable*)
    allText : string;
    allStt : integer;
    listInt : array[0..1000] of integer;
    x : integer;
    y : integer;
    z : integer;
    listLocal : array[0..1000] of get;
procedure getLength();
begin
    amAC := 0;
    for a:=1 to 1000 do begin
        if Text[a] = '0' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '1' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '2' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '3' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '4' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '5' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '6' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '7' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '8' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '9' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'a' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'b' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'c' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'd' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'e' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'f' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'g' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'h' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'i' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'j' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'k' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'l' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'm' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'n' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'o' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'p' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'q' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'r' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 's' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 't' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'u' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'v' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'w' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'x' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'y' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'z' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'A' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'B' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'C' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'D' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'E' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'F' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'G' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'H' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'I' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'J' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'K' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'L' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'M' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'N' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'O' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'P' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'Q' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'R' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'S' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'T' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'U' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'V' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'W' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'X' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'Y' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = 'Z' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = ' ' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '(' then begin
            liChar[a] := Text[a]; 
            amAC := amAC + 1;
        end
        else if Text[a] = '.' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '\' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '+' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '*' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '?' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '[' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '^' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = ']' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '$' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '(' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = ')' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '{' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '}' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '=' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '!' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '<' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '>' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '|' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = ':' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = '-' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = ')' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else if Text[a] = ',' then begin
             liChar[a] := Text[a]; 
             amAC := amAC + 1;
        end
        else break;

    end;
end;

procedure Split(s: string);
begin
    getLength();
    amRes := -1;
    Session := '';
    for a:=0 to amAC do begin
        if liChar[a] = s then begin
            amRes := amRes + 1;
            Result[amRes] := Session;
            Session := '';
        end
        else
            Session := Session + liChar[a];
    end;
    amRes := amRes + 1;
    Result[amRes] := Session;
end;

procedure Explode_Count(s: string; len: integer);
begin
    getLength();
    allText := '';
    allStt := 0;
    amRes := -1;
    for a:=1 to amAC+1 do begin
        if allStt >= len then begin
        
            (*alltext*)
            for z:=0 to allStt do begin
                alltext := alltext + liChar[listInt[z]];
            end;
            
            (*get text Session*)
            Session := '';
            for z:=listInt[0] to a-1 do begin
                Session:=Session+liChar[z];
            end;
            
       
            if Session = s then begin
                
                amRes := amRes + 1;
              
                listLocal[amRes].start := a-len;
                listLocal[amRes].ends := a+len-len-1;
            end;
            allStt := 0;
            
        end;
        
        listInt[allStt] := a;
        allStt := allStt + 1;
    end;

end;

begin
    Text := 'motconmeo , haiconmeo';
    (*Split - cắt được 1 kí tự*)
    writeln('Chức năng Split()');
    Split(',');
    
    for x:=0 to amRes do begin
        writeln('[',x,'] => ',Result[x]);
    end;
    
    (*Explode count - theo trình tự só kí tụ được set*)
    writeln('Chức năng Explode_Count()');
    Explode_Count('meo',3);
    for x:=0 to amRes do begin
        writeln(listLocal[x].start,'=>',listLocal[x].ends);
    end;
end.
