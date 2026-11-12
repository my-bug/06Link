package com.shilapi.xcertplay;
/** Identity stub: privacy is verified before any real redaction could hide a leak. */
public final class DiagnosticRedactor {
    public static final DiagnosticRedactor INSTANCE=new DiagnosticRedactor();
    public String redact(String text){return text;}
}
