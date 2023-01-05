create or replace function olaMundo() returns varchar 
as $$
declare 
    msg varchar := 'Olá, mundo!';
begin
    return msg;
end;
$$ LANGUAGE plpgsql;

select olaMundo();