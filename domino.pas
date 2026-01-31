
Program Projectkub;

Uses
SysUtils;

Type
  heap = Record
    a: integer;
    b: integer;
  End;

Var
  i,u,f,h,p,s,l,o,j,w,x,m,z,c,g,r: integer;
  s1,s2,s3,s4,s5,s6,s7: string;
  mas: array [1..29] Of heap;
  mass: array [1..29] Of integer;
  mass1: array [1..29] Of integer;
  mass2: array [1..29] Of integer;
  mass3: array [1..29] Of integer;
  mass4: array [1..29] Of integer;
Procedure kub(a:integer);
Begin
  If a=0 Then
    Begin
      s1 := s1+'   ';
      s2 := s2+'   ';
      s3 := s3+'   ';
    End;
  If a=1  Then
    Begin
      s1 := s1+'   ';
      s2 := s2+' . ';
      s3 := s3+'   ';
    End;
  If a=2  Then
    Begin
      s1 := s1+'.  ';
      s2 := s2+'   ';
      s3 := s3+'  .';
    End;
  If a=3 Then
    Begin
      s1 := s1+'.  ';
      s2 := s2+' . ';
      s3 := s3+'  .';
    End;
  If a=4 Then
    Begin
      s1 := s1+'. .';
      s2 := s2+'   ';
      s3 := s3+'. .';
    End;
  If a=5 Then
    Begin
      s1 := s1+'. .';
      s2 := s2+' . ';
      s3 := s3+'. .';
    End;
  If a=6 Then
    Begin
      s1 := s1+'. .';
      s2 := s2+'. .';
      s3 := s3+'. .';
    End;
End;
Procedure gen;

Var
  u: integer;
Begin
  h := random(28)+1;
  mass[i] := h;
  For u:=1 To i-1 Do
    Begin
      If mass[u]=mass[i] Then
        gen;
    End;
End;
Procedure gen1;

Var
  u: integer;
Begin
  h := random(28)+1;
  mass1[i] := h;
  For u:=1 To i-1 Do
    Begin
      If mass1[u]=mass1[i]  Then
        gen1;
    End;
  For u:=1 To 7 Do
    Begin
      If mass1[i]=mass[u] Then
        Begin
          gen1;
        End;
    End;
End;
Procedure pere;
Begin
  For i:=0 To (28-w-m-l) Div 2-1 Do
    Begin
      r := mass4[i+1];
      mass4[i+1] := mass4[28-w-m-l-i];
      mass4[28-w-m-l-i] := r;
    End;
  For I:=1 To 28 Do
    Begin
      r := mas[i].a;
      mas[i].a := mas[i].b;
      mas[i].b := r;
    End;
End;
Begin
  h := 0;
  Randomize;
  For i:=0 To 6 Do
    Begin
      For f:=i To 6 Do
        Begin
          inc(h);
          mas[h].a := i;
          mas[h].b := f;
        End;
    End;
  For i:=1 To 7 Do
    Begin
      gen;
      kub(mas[mass[i]].a);
      s1 := s1+'|';
      s2 := s2+'|';
      s3 := s3+'|';
      kub(mas[mass[i]].b);
      s1 := s1+' ';
      s2 := s2+' ';
      s3 := s3+' ';
    End;
  writeln(s1);
  writeln(s2);
  writeln(s3);
  s1 := '';
  s2 := '';
  s3 := '';
  o := 0;
  w := 0;
  For i:=1 To 7 Do
    Begin
      gen1;
    End;
  For i:=1 To 28 Do
    Begin
      For j:=1 To 7 Do
        Begin
          If (mass[j]=i) Or (mass1[j]=i) Then
            Begin
              inc(o);
            End;
        End;
      If o=0 Then
        Begin
          inc(w);
          mass2[w] := i;
        End;
      o := 0;
    End;
  s := 0;
  u := 0;
  l := 7;
  x := 1;
  m := 7;
  While (l>=0) And (m>=0) Do
    Begin
      If x Mod 2 =1 Then
        Begin
          readln(s7);
          For i:=1 To l Do
            Begin
              mass3[i] := mass[i];
            End;
        End
      Else
        Begin
          For i:=1 To m Do
            Begin
              If (mas[mass4[28-w-m-l]].b=mas[mass1[i]].a)  Or (mas[mass4[28-w-m-l]].b=mas[mass1[i]].
                 b) Then
                break;
            End;
          If i<m Then
            Begin
              s7 := s7+'post '+chr(i+48);
            End
          Else
            Begin
              If u<1 Then
                Begin
                  s7 := 'pere';
                  Inc(u);
                End
              Else
                Begin
                  u := 0;
                  h := random(w)+1;
                  If h<10 Then
                    s7 := s7+'bank '+chr(h +48)
                  Else
                    s7 := s7+'bank '+chr(h Div 10 +48)+chr(h Mod 10 +48);
                End;
            End;
          For i:=1 To m Do
            Begin
              mass3[i] := mass1[i];
            End;
        End;
      If (s7[1]='p') And (s7[2]='o') And (s7[3]='s') And (s7[4]='t') Then
        Begin
          If  ord(s7[7])=0 Then
            p := ord(s7[6])-48
          Else
            p := ord(s7[7])-48+ord(s7[6])-48;
          If l>9 Then
            p := p+l-9;
          mass4[x] := mass3[p];
          If 29-w-m-l>9 Then
            Begin
              Delete(s1,1,8);
              Delete(s2,1,8);
              Delete(s3,1,8);
            End;
          If x Mod 2=0 Then
            Begin
              If (mas[mass1[p]].a=mas[mass4[28-w-m-l]].b) Or (s=0)  Then
                Begin
                  kub(mas[mass3[p]].a);
                  s1 := s1+'|';
                  s2 := s2+'|';
                  s3 := s3+'|';
                  kub(mas[mass3[p]].b);
                  writeln(s1);
                  writeln(s2);
                  writeln(s3);
                  s1 := s1+' ';
                  s2 := s2+' ';
                  s3 := s3+' ';
                  s := p;
                End
              Else
                Begin
                  kub(mas[mass3[p]].b);
                  s1 := s1+'|';
                  s2 := s2+'|';
                  s3 := s3+'|';
                  kub(mas[mass3[p]].a);
                  writeln(s1);
                  writeln(s2);
                  writeln(s3);
                  s1 := s1+' ';
                  s2 := s2+' ';
                  s3 := s3+' ';
                  s := p;
                  z := mas[mass3[p]].b;
                  mas[mass3[p]].b := mas[mass3[p]].a;
                  mas[mass3[p]].a := z;
                End;
            End
          Else
            Begin
              If (mas[mass4[28-w-m-l]].b=mas[mass[p]].a) Or (s=0)  Then
                Begin
                  kub(mas[mass3[p]].a);
                  s1 := s1+'|';
                  s2 := s2+'|';
                  s3 := s3+'|';
                  kub(mas[mass3[p]].b);
                  writeln(s1);
                  writeln(s2);
                  writeln(s3);
                  s1 := s1+' ';
                  s2 := s2+' ';
                  s3 := s3+' ';
                  s := p;
                End
              Else
                Begin
                  kub(mas[mass3[p]].b);
                  s1 := s1+'|';
                  s2 := s2+'|';
                  s3 := s3+'|';
                  kub(mas[mass3[p]].a);
                  writeln(s1);
                  writeln(s2);
                  writeln(s3);
                  s1 := s1+' ';
                  s2 := s2+' ';
                  s3 := s3+' ';
                  s := p;
                  z := mas[mass3[p]].b;
                  mas[mass3[p]].b := mas[mass3[p]].a;
                  mas[mass3[p]].a := z;
                End;
            End;
          For i:=p To l Do
            Begin
              mass3[i] := mass3[i+1];
            End;
          If x Mod 2=1 Then
            Dec(l)
          Else
            Dec(m)
        End
      Else
        Begin
          If (s7[1]='b') And (s7[2]='a') And (s7[3]='n') And (s7[4]='k') Then
            Begin
              If x Mod 2=1 Then
                Begin
                  h := random(w)+1;
                  If h<10 Then
                    s7 := s7+'bank '+chr(h +48)
                  Else
                    s7 := s7+'bank '+chr(h Div 10 +48)+chr(h Mod 10 +48);
                End;
              If  x Mod 2=1 Then
                Begin
                  inc(l);
                  mass3[l] := mass2[ord(s7[6])-48];
                End
              Else
                Begin
                  inc(m);
                  mass3[m] := mass2[ord(s7[6])-48];
                End;
              For i:=ord(s7[6])-48 To w Do
                Begin
                  mass2[i] := mass2[i+1];
                End;
              dec(w);
              c := 6;
            End
          Else
            Begin
              If (s7[1]='l') And (s7[2]='e') And (s7[3]='v') And (s7[4]='o') Then
                Begin
                  s1 := '';
                  s2 := '';
                  s3 := '';
                  For i:=1 To 9 Do
                    Begin
                      kub(mas[mass4[i]].a);
                      s1 := s1+'|';
                      s2 := s2+'|';
                      s3 := s3+'|';
                      kub(mas[mass4[i]].b);
                      s1 := s1+' ';
                      s2 := s2+' ';
                      s3 := s3+' ';
                    End;
                  c := 6;
                  g := 3;
                  writeln(s1);
                  writeln(s2);
                  writeln(s3);
                End
              Else
                Begin
                  If (s7[1]='p') And (s7[2]='r') And (s7[3]='a') And (s7[4]='v') And (s7[5]='o')
                    Then
                    Begin
                      s1 := '';
                      s2 := '';
                      s3 := '';
                      For I:=20-l-m-w To 28-l-m-w Do
                        Begin
                          kub(mas[mass4[i]].a);
                          s1 := s1+'|';
                          s2 := s2+'|';
                          s3 := s3+'|';
                          kub(mas[mass4[i]].b);
                          s1 := s1+' ';
                          s2 := s2+' ';
                          s3 := s3+' ';
                        End;
                      c := 6;
                      g := 3;
                      writeln(s1);
                      writeln(s2);
                      writeln(s3);
                    End
                  Else
                    Begin
                      pere;
                      s1 := '';
                      s2 := '';
                      s3 := '';
                      If 28-w-m-l<=9 Then
                        Begin
                          For I:=1 To 28-w-m-l Do
                            Begin
                              kub(mas[mass4[i]].a);
                              s1 := s1+'|';
                              s2 := s2+'|';
                              s3 := s3+'|';
                              kub(mas[mass4[i]].b);
                              s1 := s1+' ';
                              s2 := s2+' ';
                              s3 := s3+' ';
                            End;
                        End
                      Else
                        Begin
                          For I:=20-w-m-l To 28-w-m-l Do
                            Begin
                              kub(mas[mass4[i]].a);
                              s1 := s1+'|';
                              s2 := s2+'|';
                              s3 := s3+'|';
                              kub(mas[mass4[i]].b);
                              s1 := s1+' ';
                              s2 := s2+' ';
                              s3 := s3+' ';
                            End;
                        End;
                      c := 6;
                      g := 3;
                      If i Mod 2=1 Then
                        Begin
                          writeln(s1);
                          writeln(s2);
                          writeln(s3);
                          writeln;
                        End;
                    End;
                End
            End;
        End;
      s4 := s1;
      s5 := s2;
      s6 := s3;
      s1 := '';
      s2 := '';
      s3 := '';
      If (x Mod 2=1) And (g<>3) Then
        Begin
          If  l<9 Then
            Begin
              writeln;
              For i:=1 To l Do
                Begin
                  kub(mas[mass3[i]].a);
                  s1 := s1+'|';
                  s2 := s2+'|';
                  s3 := s3+'|';
                  kub(mas[mass3[i]].b);
                  s1 := s1+' ';
                  s2 := s2+' ';
                  s3 := s3+' ';
                End;
              writeln(s1);
              writeln(s2);
              writeln(s3);
              writeln;
            End
          Else
            Begin
              writeln;
              For i:=l-8 To l Do
                Begin
                  kub(mas[mass3[i]].a);
                  s1 := s1+'|';
                  s2 := s2+'|';
                  s3 := s3+'|';
                  kub(mas[mass3[i]].b);
                  s1 := s1+' ';
                  s2 := s2+' ';
                  s3 := s3+' ';
                End;
              writeln(s1);
              writeln(s2);
              writeln(s3);
              writeln;
            End
        End;
      s1 := s4;
      s2 := s5;
      s3 := s6;
      s4 := '';
      s5 := '';
      s6 := '';
      If x Mod 2=1 Then
        Begin
          For i:=1 To l Do
            Begin
              mass[i] := mass3[i];
            End;
        End
      Else
        Begin
          For i:=1 To m Do
            Begin
              mass1[i] := mass3[i];
            End;
        End;
      s7 := '';
      If c<>6 Then
        inc(x);
      c := 0;
      g := 0;
    End;
  If l=0 Then
    writeln('YOU WIN');
  If m=0 Then
    Writeln('YOU LOSE');
End.
