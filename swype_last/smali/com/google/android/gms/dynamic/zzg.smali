.class public abstract Lcom/google/android/gms/dynamic/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final KD:Ljava/lang/String;

.field private KE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzg;->KD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzcr(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzg$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->KE:Ljava/lang/Object;

    if-nez v0, :cond_2c

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string/jumbo v1, "Could not get remote context."

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/dynamic/zzg;->KD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/zzg;->zzc(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->KE:Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_2c} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_1a .. :try_end_2c} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2c} :catch_43

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->KE:Ljava/lang/Object;

    return-object v0

    :catch_2f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string/jumbo v2, "Could not load creator class."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_39
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string/jumbo v2, "Could not instantiate creator."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_43
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string/jumbo v2, "Could not access creator."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
