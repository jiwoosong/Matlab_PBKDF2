function hash =  PBKDF2(hash_method, password, salt, iteration, dklen)
%    PBKDF2 transforms the password into a hash
% 
%   hash = PBKDF2(hash_method, password, salt, iteration, dklen) returns a 
%   PBKDF2 hash. It requires builtin Python 2 or 3. 
% 
%   hash_method is python builtin hashlib's digest algorithm type e.g. 
%   'sha1', 'sha256', 'sha512'. 
% 
%   Password and salt can be any string or character inputs, their types 
%   changed into byte automatically. 
%   
%   Iteration and dklen are any numbers, their types changed into integer 
%   automatically.

hash= string(py.hashlib.pbkdf2_hmac('sha1',py.bytes(password,'latin-1'),py.bytes(salt,'latin-1'),int16(iteration), int16(dklen)).hex());

end
