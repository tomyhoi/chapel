record mytuple {
  type t1;
  type t2;
  var f1 : t1;
  var f2 : t2;
  function this(param i : integer) var where i == 1 {
    return f1;
  }
  function this(param i : integer) var where i == 2 {
    return f2;
  }
}

function fwrite(f : file, val : mytuple) {
  fwrite(f, "(", val.f1, ", ", val.f2, ")");
}

var t : mytuple(integer, float);

t(1) = 12;
t(2) = 14.0;

writeln(t);
