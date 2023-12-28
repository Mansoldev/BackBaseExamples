create or replace function atriangulo(base in float,altura in float) return float
is
area float;
begin
area:=(base*altura/2);
return area;
end;
/
