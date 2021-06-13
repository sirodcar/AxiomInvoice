unit myfunctions;




interface



implementation



uses SysUtils, Classes, fs_iinterpreter;

          // you can also add a reference to any other external library here



type

 TFunctions = class(TfsRTTIModule)

private

  function CallMethod(Instance: TObject; ClassType: TClass;

                      const MethodName: String; var Params: Variant): Variant;

public

  constructor Create(AScript: TfsScript); override;

end;





function MyFunc(s: String; i: Integer): Boolean;

begin

// required logic

end;



procedure MyProc(s: String);

begin

// required logic

end;





{ TFunctions }



constructor TFunctions.Create;
begin
inherited Create(AScript);
with AScript do
   begin
   AddMethod('function MyFunc(s: String; i: Integer): Boolean', CallMethod,
            'My functions', ' MyFunc function always returns True');
   AddMethod('procedure MyProc(s: String)', CallMethod,
            'My functions', ' MyProc procedure does not do anything');
   end;
end;



function TFunctions.CallMethod(Instance: TObject; ClassType: TClass;

                              const MethodName: String;

                              var Params: Variant): Variant;

begin

if MethodName = 'MYFUNC' then

   Result := MyFunc(Params[0], Params[1])

else if MethodName = 'MYPROC' then

   MyProc(Params[0]);

end;



initialization

 fsRTTIModules.Add(TFunctions);



end.
