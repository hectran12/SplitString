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
    isCheck : boolean;
    (*explode variable*)
    allText : string;
    allStt : integer;
    listInt : array[0..1000] of integer;
    x : integer;
    y : integer;
    z : integer;
    listLocal : array[0..1000] of get;
procedure getLength();

const chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY, (.\+*?[^]$(){}=!<>|:-)';
begin
    isCheck := False;
    amAC := 0;
    for a:=1 to 1000 do begin
        for y:=1 to 85 do begin
            if Text[a] = chars[y] then begin
                liChar[a] := Text[a]; 
                amAC := amAC + 1;
                isCheck := True;
            end;
        end;
        if isCheck = False then begin
                break;
        end;
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
