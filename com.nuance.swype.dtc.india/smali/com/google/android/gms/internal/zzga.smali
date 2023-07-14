.class public final Lcom/google/android/gms/internal/zzga;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzbnk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfz;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnl:J

.field public final zzbnm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbno:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnq:Z

.field public final zzbnr:Ljava/lang/String;

.field public final zzbns:J

.field public final zzbnt:Ljava/lang/String;

.field public final zzbnu:I

.field public final zzbnv:I

.field public final zzbnw:J

.field public final zzbnx:Z

.field public zzbny:I

.field public zzbnz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "Mediation Response JSON: "

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "ad_networks"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    move v2, v3

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/zzfz;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_1

    invoke-static {v9}, Lcom/google/android/gms/internal/zzga;->zza(Lcom/google/android/gms/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/zzga;->zzbny:I

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnz:I

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnk:Ljava/util/List;

    const-string/jumbo v0, "qdata"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnr:Ljava/lang/String;

    const-string/jumbo v0, "fs_model_type"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnv:I

    const-string/jumbo v0, "timeout_ms"

    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnw:J

    const-string/jumbo v0, "settings"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v2, "ad_network_timeout_millis"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnl:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v2, "click_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnm:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v2, "imp_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnn:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v2, "nofill_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzga;->zzbno:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v2, "remote_ping_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnp:Ljava/util/List;

    const-string/jumbo v2, "render_in_browser"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnq:Z

    const-string/jumbo v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzga;->zzbns:J

    const-string/jumbo v2, "rewards"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v2

    if-nez v2, :cond_5

    iput-object v11, p0, Lcom/google/android/gms/internal/zzga;->zzbnt:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnu:I

    :goto_3
    const-string/jumbo v2, "use_displayed_impression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnx:Z

    :goto_4
    return-void

    :cond_4
    move-wide v2, v4

    goto :goto_2

    :cond_5
    iget-object v3, v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzga;->zzbnt:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzcid:I

    iput v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnu:I

    goto :goto_3

    :cond_6
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzga;->zzbnl:J

    iput-object v11, p0, Lcom/google/android/gms/internal/zzga;->zzbnm:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzga;->zzbnn:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzga;->zzbno:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzga;->zzbnp:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzga;->zzbns:J

    iput-object v11, p0, Lcom/google/android/gms/internal/zzga;->zzbnt:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnu:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnq:Z

    goto :goto_4
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfz;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzga;->zzbnk:Ljava/util/List;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnl:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzga;->zzbnm:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzga;->zzbnn:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzga;->zzbno:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzga;->zzbnp:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnq:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzga;->zzbnr:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzga;->zzbns:J

    iput v1, p0, Lcom/google/android/gms/internal/zzga;->zzbny:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnt:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnu:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzga;->zzbnv:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzga;->zzbnw:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzga;->zzbnx:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfz;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
