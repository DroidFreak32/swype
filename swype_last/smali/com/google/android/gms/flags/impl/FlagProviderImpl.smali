.class public Lcom/google/android/gms/flags/impl/FlagProviderImpl;
.super Lcom/google/android/gms/internal/zzty$zza;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzamt:Z

.field private zzaxu:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzty$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z

    return-void
.end method


# virtual methods
.method public getBooleanFlagValue(Ljava/lang/String;ZI)Z
    .registers 7

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzaxu:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1000
    new-instance v2, Lcom/google/android/gms/flags/impl/zza$zza$1;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/flags/impl/zza$zza$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzua;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_4
.end method

.method public getIntFlagValue(Ljava/lang/String;II)I
    .registers 7

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzaxu:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2000
    new-instance v2, Lcom/google/android/gms/flags/impl/zza$zzb$1;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/flags/impl/zza$zzb$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzua;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4
.end method

.method public getLongFlagValue(Ljava/lang/String;JI)J
    .registers 9

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z

    if-nez v0, :cond_5

    :goto_4
    return-wide p2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzaxu:Landroid/content/SharedPreferences;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3000
    new-instance v2, Lcom/google/android/gms/flags/impl/zza$zzc$1;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/flags/impl/zza$zzc$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzua;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_4
.end method

.method public getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z

    if-nez v0, :cond_5

    :goto_4
    return-object p2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzaxu:Landroid/content/SharedPreferences;

    .line 4000
    new-instance v1, Lcom/google/android/gms/flags/impl/zza$zzd$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/flags/impl/zza$zzd$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzua;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    .line 0
    goto :goto_4
.end method

.method public init(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z

    if-eqz v1, :cond_b

    :goto_a
    return-void

    :cond_b
    :try_start_b
    const-string/jumbo v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/flags/impl/zzb;->zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzaxu:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzamt:Z
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_a

    :catch_1d
    move-exception v0

    goto :goto_a
.end method
