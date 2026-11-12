import com.android.apksig.ApkSigner;
import com.android.apksig.ApkVerifier;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;

/** Small CLI around Google's apksig, with no signing credentials in source. */
public final class SignApk {
    private static String fingerprint(X509Certificate certificate) throws Exception {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(certificate.getEncoded());
        StringBuilder hex = new StringBuilder();
        for (byte value : digest) hex.append(String.format("%02x", value & 255));
        return hex.toString();
    }

    public static void main(String[] args) throws Exception {
        File apk;
        if (args.length == 5 || args.length == 6) {
            char[] password = new String(Files.readAllBytes(Paths.get(args[3])), StandardCharsets.UTF_8)
                    .trim().toCharArray();
            try {
                KeyStore store = KeyStore.getInstance("PKCS12");
                try (FileInputStream stream = new FileInputStream(args[2])) { store.load(stream, password); }
                String alias = args[4];
                if (!store.isKeyEntry(alias)) throw new IllegalArgumentException("Signing key alias not found: " + alias);
                PrivateKey key = (PrivateKey) store.getKey(alias, password);
                X509Certificate certificate = (X509Certificate) store.getCertificate(alias);
                if (args.length == 6 && !args[5].isEmpty() && !fingerprint(certificate).equals(args[5]))
                    throw new IllegalArgumentException("Signing certificate does not match the configured release certificate");
                ApkSigner.SignerConfig signer = new ApkSigner.SignerConfig.Builder(alias, key,
                        Collections.singletonList(certificate)).build();
                apk = new File(args[1]);
                new ApkSigner.Builder(Collections.singletonList(signer))
                        .setInputApk(new File(args[0])).setOutputApk(apk)
                        .setV1SigningEnabled(true).setV2SigningEnabled(true)
                        .setV3SigningEnabled(true).setV4SigningEnabled(false)
                        .setOtherSignersSignaturesPreserved(false)
                        .setAlignmentPreserved(false).setLibraryPageAlignmentBytes(16384)
                        .build().sign();
            } finally {
                Arrays.fill(password, '\0');
            }
        } else if (args.length == 1) {
            apk = new File(args[0]);
        } else {
            throw new IllegalArgumentException("input output keystore password-file alias [expected-cert-sha256], or APK to verify");
        }
        ApkVerifier.Result result = new ApkVerifier.Builder(apk).build().verify();
        System.out.println("verified=" + result.isVerified() + " v1=" + result.isVerifiedUsingV1Scheme()
                + " v2=" + result.isVerifiedUsingV2Scheme() + " v3=" + result.isVerifiedUsingV3Scheme());
        for (Object error : result.getAllErrors()) System.out.println("ERROR: " + error);
        for (Object warning : result.getWarnings()) System.out.println("WARNING: " + warning);
        for (X509Certificate certificate : result.getSignerCertificates())
            System.out.println("certificate SHA-256=" + fingerprint(certificate));
        if (!result.isVerified()) throw new IllegalStateException("APK signature verification failed");
    }
}
