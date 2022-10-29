.class public final Lcom/google/android/gms/common/util/zzi;
.super Ljava/lang/Object;


# static fields
.field public static AX:Ljava/lang/Boolean;

.field public static AY:Ljava/lang/Boolean;

.field private static AZ:Ljava/lang/Boolean;

.field private static Ba:Ljava/lang/Boolean;


# direct methods
.method public static zzck(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AZ:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    .line 1000
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->AZ:Ljava/lang/Boolean;

    :cond_20
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static zzcl(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->Ba:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    .line 2000
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "cn.google"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->Ba:Ljava/lang/Boolean;

    :cond_20
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->Ba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_1a
.end method
