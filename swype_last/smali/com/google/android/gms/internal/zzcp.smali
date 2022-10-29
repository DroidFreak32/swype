.class public abstract Lcom/google/android/gms/internal/zzcp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static zzasz:Ljava/security/MessageDigest;


# instance fields
.field protected zzail:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzcp;->zzasz:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract zzaa(Ljava/lang/String;)[B
.end method

.method protected final zzie()Ljava/security/MessageDigest;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzasz:Ljava/security/MessageDigest;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzasz:Ljava/security/MessageDigest;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1b

    :try_start_f
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/zzcp;->zzasz:Ljava/security/MessageDigest;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_18} :catch_22
    .catchall {:try_start_f .. :try_end_18} :catchall_1f

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzasz:Ljava/security/MessageDigest;

    monitor-exit v1

    goto :goto_a

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw v0

    :catch_22
    move-exception v2

    goto :goto_18
.end method
