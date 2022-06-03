{
    Một số biến cần result lại nếu gặp bug
    (*amRes, amAcc, Result*)

}
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
    liChar : array[0..1000] of string; (*Toàn kí tự dạng chuỗi*)
    amAC : integer; (*Phiên*)
    isCheck : boolean; (*Check length*)
    (*explode variable*)
    allText : string; (*Tất cả kí tự*)
    allStt : integer; (*phiên*)
    listInt : array[0..1000] of integer; (*Session*)
    {
        Session variales
    }
    x : integer;
    y : integer;
    z : integer;
    listLocal : array[0..1000] of get;
    
{
    Lấy độ dài kí tự
    how to use:
        - Ghi chuỗi vào biến (*Text*)
        - gọi hàm ra getLength()
        - Số kí tự trả về bên trong biến (*amAC*)
}
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

{
    Cắt chuỗi ( 1 kí tự )
    how to use:
        - Ghi chuỗi vào biến (*Text*)
        - gọi hàm ra Split('<kí tự muốn tách>')
        - Kết quả trả về dạng array , được gán vào biến (*Result*) ( Kiểu dữ liệu mỗi phần tử là String )
}
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

{
    Cắt chuỗi nhiều kí tự , theo dộ dài
    how to use:
        - Ghi chuỗi vào biến (*Text*)
        - gọi hàm ra Explode_Count('<chuỗi muốn tách>','<độ dài chuỗi muốn tách>')
        - Kết quả trả về được gán vào biến (*listLocal*)
        - Kiểu dữ liệu trả về là get được record trong type với (*start*) và (*ends*) là 2 integer
        - Lấy ra bằng cách như demo bên dưới
        CÁCH SỬ DỤNG CHI TIẾT:
        - Biến (*amRes*) là tổng số lần gặp kí tự muốn cắt trong chuỗi tìm được
        - Lấy nó và dùng for từ 0 đến amRes
        - Ta lấy được 2 giá trị từ 2 biến loại bản ghi là (*start*) và (*ends*)
        - start: Lấy vị trí đầu gặp chuỗi muốn cắt
        - ends: Lấy vị trí cuối của chuỗi đã gặp
}
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

    (*Example*)
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
