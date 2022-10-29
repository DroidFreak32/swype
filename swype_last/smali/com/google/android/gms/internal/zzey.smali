.class public final Lcom/google/android/gms/internal/zzey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzey$zza;
    }
.end annotation


# instance fields
.field private final zzbiy:Lcom/google/android/gms/internal/zzey$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzey$zza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzey;->zzbiy:Lcom/google/android/gms/internal/zzey$zza;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "grant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1000
    const/4 v2, 0x0

    :try_start_13
    const-string/jumbo v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    new-instance v1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_34} :catch_3b

    move-object v0, v1

    :goto_35
    iget-object v1, p0, Lcom/google/android/gms/internal/zzey;->zzbiy:Lcom/google/android/gms/internal/zzey$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzey$zza;->zzb(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    .line 0
    :cond_3a
    :goto_3a
    return-void

    .line 1000
    :catch_3b
    move-exception v0

    const-string/jumbo v1, "Unable to parse reward amount."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    move-object v0, v2

    goto :goto_35

    .line 0
    :cond_44
    const-string/jumbo v1, "video_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzey;->zzbiy:Lcom/google/android/gms/internal/zzey$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey$zza;->zzev()V

    goto :goto_3a
.end method
