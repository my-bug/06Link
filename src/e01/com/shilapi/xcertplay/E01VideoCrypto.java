package com.shilapi.xcertplay;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.ProviderException;
import javax.crypto.Cipher;
import javax.crypto.BadPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/** Private provider only: never modifies global security providers or TLS behavior. */
public final class E01VideoCrypto {
    private static final String NAME = "ChaCha20/Poly1305/NoPadding";
    private static Cipher platform() throws GeneralSecurityException {
        try { return Cipher.getInstance(NAME); }
        catch (GeneralSecurityException unavailable) { return Cipher.getInstance("ChaCha20-Poly1305"); }
    }
    private static final ThreadLocal<State> STATE = new ThreadLocal<State>() {
        protected State initialValue() { return new State(); }
    };
    private static final class Bundled {
        static final Provider PROVIDER = load();
        private static Provider load() {
            try {
                return (Provider)Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider").invoke(null);
            } catch (ReflectiveOperationException | LinkageError | RuntimeException unavailable) { return null; }
        }
    }
    private static final class State {
        Cipher cipher;
        boolean triedBundled;
        String reported;
        void report(String name) {
            if (name.equals(reported)) return;
            reported = name;
            try { android.util.Log.i("06Link-video", "ChaCha20-Poly1305 provider=" + name); }
            catch (RuntimeException | LinkageError ignored) { }
        }
        State() {
            try { cipher = platform(); }
            catch (GeneralSecurityException | LinkageError | ProviderException unavailable) { bundled(); }
        }
        void bundled() {
            triedBundled = true; cipher = null;
            try { if (Bundled.PROVIDER != null) cipher = Cipher.getInstance(NAME, Bundled.PROVIDER); }
            catch (GeneralSecurityException | LinkageError | ProviderException unavailable) { cipher = null; }
        }
    }
    /** Null only means accelerated implementation unavailable. Bad tags ALWAYS throw. */
    public static byte[] open(byte[] key, byte[] nonce, byte[] sealed, byte[] aad)
            throws GeneralSecurityException {
        if (key == null || nonce == null || sealed == null || aad == null) throw new NullPointerException();
        if (key.length != 32 || nonce.length != 12 || sealed.length < 16)
            throw new GeneralSecurityException("Invalid ChaCha20-Poly1305 input");
        State state = STATE.get();
        for (int attempt = 0; attempt < 2 && state.cipher != null; attempt++) {
            try {
                Cipher cipher = state.cipher;
                cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key, "ChaCha20"), new IvParameterSpec(nonce));
                cipher.updateAAD(aad);
                byte[] result = cipher.doFinal(sealed);
                state.report(cipher.getProvider().getName());
                return result;
            } catch (BadPaddingException authenticationFailure) {
                throw authenticationFailure;
            } catch (GeneralSecurityException | LinkageError | ProviderException unavailable) {
                if (state.triedBundled) state.cipher = null; else state.bundled();
            }
        }
        state.report("BouncyCastle fallback");
        return null;
    }
    public static String implementation() {
        State state = STATE.get();
        return state.cipher == null ? "BouncyCastle" : state.cipher.getProvider().getName();
    }
    private E01VideoCrypto() { }
}
