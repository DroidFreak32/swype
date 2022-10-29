.class public Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

.field private zzako:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_14

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    :goto_13
    return-void

    :cond_14
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    return-void
.end method


# virtual methods
.method public recordClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzako:Z

    return-void
.end method

.method public zzel()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzccu:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzako:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzt(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_45

    :goto_2
    const-string/jumbo v0, "Action was blocked because no touch was detected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzccu:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzccv:Ljava/util/List;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzakn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzccv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "{NAVIGATION_URL}"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->mContext:Landroid/content/Context;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/zzkh;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_45
    const-string/jumbo p1, ""

    goto :goto_2

    :cond_49
    return-void
.end method
