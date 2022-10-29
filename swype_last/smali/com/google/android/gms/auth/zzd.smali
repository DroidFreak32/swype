.class public Lcom/google/android/gms/auth/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/zzd$zza;
    }
.end annotation


# static fields
.field public static final KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

.field public static final KEY_CALLER_UID:Ljava/lang/String;

.field static final cf:Landroid/content/ComponentName;

.field private static final cg:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v0, "callerUid"

    sput-object v0, Lcom/google/android/gms/auth/zzd;->KEY_CALLER_UID:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v0, "androidPackageName"

    sput-object v0, Lcom/google/android/gms/auth/zzd;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/zzd;->cf:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.recovery.RecoveryService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/zzd;->cg:Landroid/content/ComponentName;

    return-void
.end method

.method static zza(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzd$zza;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Lcom/google/android/gms/auth/zzd$zza",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .prologue
    .line 0
    new-instance v1, Lcom/google/android/gms/common/zza;

    invoke-direct {v1}, Lcom/google/android/gms/common/zza;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzm;->zzce(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;

    move-result-object v2

    const-string/jumbo v0, "GoogleAuthUtil"

    invoke-virtual {v2, p1, v1, v0}, Lcom/google/android/gms/common/internal/zzm;->zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1000
    :try_start_12
    const-string/jumbo v0, "BlockingServiceConnection.getService() called on main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/gms/common/zza;->qZ:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot call get on this connection more than once"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_25} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_25} :catch_59
    .catchall {:try_start_12 .. :try_end_25} :catchall_38

    .line 0
    :catch_25
    move-exception v0

    :goto_26
    :try_start_26
    const-string/jumbo v3, "GoogleAuthUtil"

    const-string/jumbo v4, "Error on service connection."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Error on service connection."

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/common/internal/zzm;->zzb$9b3168c(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    throw v0

    .line 1000
    :cond_3d
    const/4 v0, 0x1

    :try_start_3e
    iput-boolean v0, v1, Lcom/google/android/gms/common/zza;->qZ:Z

    iget-object v0, v1, Lcom/google/android/gms/common/zza;->ra:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 0
    invoke-interface {p2, v0}, Lcom/google/android/gms/auth/zzd$zza;->zzbs(Landroid/os/IBinder;)Ljava/lang/Object;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4b} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_4b} :catch_59
    .catchall {:try_start_3e .. :try_end_4b} :catchall_38

    move-result-object v0

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/common/internal/zzm;->zzb$9b3168c(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    return-object v0

    :cond_50
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Could not bind to service."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_59
    move-exception v0

    goto :goto_26
.end method

.method static synthetic zzo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    if-nez p0, :cond_14

    const-string/jumbo v0, "GoogleAuthUtil"

    const-string/jumbo v1, "Binder call returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Service unavailable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_14
    return-object p0
.end method
