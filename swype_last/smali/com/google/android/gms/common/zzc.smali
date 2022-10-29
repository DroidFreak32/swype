.class public Lcom/google/android/gms/common/zzc;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field private static final rf:Lcom/google/android/gms/common/zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v0, Lcom/google/android/gms/common/zzc;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    new-instance v0, Lcom/google/android/gms/common/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzc;->rf:Lcom/google/android/gms/common/zzc;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzang()Lcom/google/android/gms/common/zzc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/zzc;->rf:Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method public static zzbp(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzbp(Landroid/content/Context;)V

    return-void
.end method

.method private static zzm(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gcore_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/gms/common/zzc;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_48

    :try_start_36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_48} :catch_4d

    :cond_48
    :goto_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_4d
    move-exception v1

    goto :goto_48
.end method


# virtual methods
.method public getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/zze;->zzc(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0x12

    :cond_c
    return v0
.end method

.method public isUserResolvableError(I)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->isUserRecoverableError(I)Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzi;->zzck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    const/16 p2, 0x2a

    :cond_b
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    const/high16 v1, 0x10000000

    invoke-static {p1, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_12
.end method

.method public zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .registers 6

    sparse-switch p2, :sswitch_data_1e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :sswitch_5
    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p1, p3}, Lcom/google/android/gms/common/zzc;->zzm(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzo;->zzad(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_4

    :sswitch_11
    invoke-static {}, Lcom/google/android/gms/common/internal/zzo;->zzata()Landroid/content/Intent;

    move-result-object v0

    goto :goto_4

    :sswitch_16
    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzo;->zzho(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_4

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_16
        0x2a -> :sswitch_11
    .end sparse-switch
.end method

.method public zzbn(Landroid/content/Context;)I
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->zzbn(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public zzc(Landroid/content/Context;I)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/common/zze;->zzc(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public zzfc(I)Landroid/content/Intent;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
