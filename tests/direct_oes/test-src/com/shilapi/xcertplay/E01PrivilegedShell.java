package com.shilapi.xcertplay;
// Device eligibility only; no command execution is provided by the fake Android runtime.
final class E01PrivilegedShell {
 static boolean supported(){return android.os.Build.VERSION.SDK_INT==22&&"E01".equals(android.os.Build.MODEL)&&"BX11QJ".equals(android.os.Build.DEVICE);}
}
