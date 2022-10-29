.class final Lcom/google/android/gms/internal/zzpg$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/zzpg;->qU:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->qU:Ljava/lang/Boolean;

    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/zzpg;->qU:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 0
    if-nez v0, :cond_29

    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    :goto_26
    return-void

    :cond_27
    move v0, v2

    .line 1000
    goto :goto_15

    .line 0
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "gms:playlog:service:sampling_"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaeo;->zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    goto :goto_26
.end method
