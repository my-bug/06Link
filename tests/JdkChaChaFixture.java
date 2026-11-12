import java.nio.ByteBuffer;
import java.security.*;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.*;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * Host-only adapter for the JDK 17 SunJCE repeated-initialization restriction.
 * Android uses its platform provider or bundled Conscrypt. This fixture keeps
 * every encryption/decryption and authentication check in the real JDK cipher;
 * it merely creates a fresh delegate on init instead of reusing SunJCE's nonce
 * guard. No expected plaintext, tag bypass, or fallback implementation is used.
 */
public final class JdkChaChaFixture extends Provider {
    private static Provider systemProvider;
    private JdkChaChaFixture() {
        super("HostReusableChaCha", "1.0", "Test-only reusable initialization over the real JDK cipher");
        put("Cipher.ChaCha20/Poly1305/NoPadding", FreshCipher.class.getName());
        put("Cipher.ChaCha20-Poly1305", FreshCipher.class.getName());
    }
    static void installIfNeeded() throws Exception {
        Cipher encrypt = Cipher.getInstance("ChaCha20-Poly1305");
        Provider provider = encrypt.getProvider();
        SecretKeySpec key = new SecretKeySpec(new byte[32], "ChaCha20");
        IvParameterSpec nonce = new IvParameterSpec(new byte[12]);
        encrypt.init(Cipher.ENCRYPT_MODE, key, nonce);
        byte[] sealed = encrypt.doFinal(new byte[] {1, 2, 3});
        Cipher decrypt = Cipher.getInstance("ChaCha20-Poly1305", provider);
        decrypt.init(Cipher.DECRYPT_MODE, key, nonce);
        decrypt.doFinal(sealed);
        try {
            decrypt.init(Cipher.DECRYPT_MODE, key, nonce);
        } catch (InvalidKeyException restriction) {
            if (!"SunJCE".equals(provider.getName()) || restriction.getMessage() == null
                    || !restriction.getMessage().contains("Matching key and nonce")) throw restriction;
            systemProvider = provider;
            Security.insertProviderAt(new JdkChaChaFixture(), 1);
            System.out.println("HOST fixture: fresh SunJCE delegate on init; real algorithm and tag verification retained");
        }
    }
    public static final class FreshCipher extends CipherSpi {
        private Cipher delegate = fresh();
        private static Cipher fresh() {
            try { return Cipher.getInstance("ChaCha20-Poly1305", systemProvider); }
            catch (GeneralSecurityException error) { throw new ProviderException(error); }
        }
        protected void engineSetMode(String mode) throws NoSuchAlgorithmException {
            if (!"Poly1305".equalsIgnoreCase(mode)) throw new NoSuchAlgorithmException(mode);
        }
        protected void engineSetPadding(String padding) throws NoSuchPaddingException {
            if (!"NoPadding".equalsIgnoreCase(padding)) throw new NoSuchPaddingException(padding);
        }
        protected int engineGetBlockSize() { return delegate.getBlockSize(); }
        protected int engineGetOutputSize(int length) { return delegate.getOutputSize(length); }
        protected byte[] engineGetIV() { return delegate.getIV(); }
        protected AlgorithmParameters engineGetParameters() { return delegate.getParameters(); }
        protected void engineInit(int mode, Key key, SecureRandom random) throws InvalidKeyException {
            delegate = fresh(); delegate.init(mode, key, random);
        }
        protected void engineInit(int mode, Key key, AlgorithmParameterSpec params, SecureRandom random)
                throws InvalidKeyException, InvalidAlgorithmParameterException {
            delegate = fresh(); delegate.init(mode, key, params, random);
        }
        protected void engineInit(int mode, Key key, AlgorithmParameters params, SecureRandom random)
                throws InvalidKeyException, InvalidAlgorithmParameterException {
            delegate = fresh(); delegate.init(mode, key, params, random);
        }
        protected void engineUpdateAAD(byte[] bytes, int offset, int length) { delegate.updateAAD(bytes, offset, length); }
        protected void engineUpdateAAD(ByteBuffer bytes) { delegate.updateAAD(bytes); }
        protected byte[] engineUpdate(byte[] bytes, int offset, int length) { return delegate.update(bytes, offset, length); }
        protected int engineUpdate(byte[] bytes, int offset, int length, byte[] out, int outOffset)
                throws ShortBufferException { return delegate.update(bytes, offset, length, out, outOffset); }
        protected byte[] engineDoFinal(byte[] bytes, int offset, int length)
                throws IllegalBlockSizeException, BadPaddingException { return delegate.doFinal(bytes, offset, length); }
        protected int engineDoFinal(byte[] bytes, int offset, int length, byte[] out, int outOffset)
                throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
            return delegate.doFinal(bytes, offset, length, out, outOffset);
        }
    }
}
