.class public final Lcom/fsck/k9/crypto/Apg;
.super Landroid/support/v4/app/LoaderManager;
.source "Apg.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 37
    const-string v0, "content://org.thialfihar.android.apg.provider/key_rings/secret/key_id/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    const-string v0, "content://org.thialfihar.android.apg.provider/key_rings/secret/emails/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    const-string v0, "content://org.thialfihar.android.apg.provider/key_rings/public/key_id/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    const-string v0, "content://org.thialfihar.android.apg.provider/key_rings/public/emails/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    const-string v0, ".*?(-----BEGIN PGP MESSAGE-----.*?-----END PGP MESSAGE-----).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 87
    const-string v0, ".*?(-----BEGIN PGP SIGNED MESSAGE-----.*?-----BEGIN PGP SIGNATURE-----.*?-----END PGP SIGNATURE-----).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 47
    return-void
.end method

.method public static createInstance()Lcom/fsck/k9/crypto/Apg;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/fsck/k9/crypto/Apg;

    invoke-direct {v0}, Lcom/fsck/k9/crypto/Apg;-><init>()V

    return-object v0
.end method
