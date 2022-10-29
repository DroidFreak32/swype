.class public final Lcom/google/android/gms/internal/zzfz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzbmu:Ljava/lang/String;

.field public final zzbmv:Ljava/lang/String;

.field public final zzbmw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbmx:Ljava/lang/String;

.field public final zzbmy:Ljava/lang/String;

.field public final zzbmz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbna:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnc:Ljava/lang/String;

.field public final zzbnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnf:Ljava/lang/String;

.field public final zzbng:Ljava/lang/String;

.field public final zzbnh:Ljava/lang/String;

.field public final zzbni:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfz;->zzbmu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfz;->zzbmw:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmx:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfz;->zzbmz:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfz;->zzbna:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfz;->zzbnc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzfz;->zzbnd:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzfz;->zzbne:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbng:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbni:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnj:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzfz;->zzbnb:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmv:Ljava/lang/String;

    const-string/jumbo v0, "adapters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2e

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmw:Ljava/util/List;

    const-string/jumbo v0, "allocation_id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v0, "clickurl"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmz:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v0, "imp_urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbna:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v0, "fill_urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnb:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v0, "video_start_urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnd:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v0, "video_complete_urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbne:Ljava/util/List;

    const-string/jumbo v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_86
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmu:Ljava/lang/String;

    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_e1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_95
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnc:Ljava/lang/String;

    if-eqz v2, :cond_e3

    const-string/jumbo v0, "class_name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbmy:Ljava/lang/String;

    const-string/jumbo v0, "html_template"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnf:Ljava/lang/String;

    const-string/jumbo v0, "ad_base_url"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbng:Ljava/lang/String;

    const-string/jumbo v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbnh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    const-string/jumbo v0, "template_ids"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbni:Ljava/util/List;

    const-string/jumbo v0, "ad_loader_options"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_dc
    iput-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbnj:Ljava/lang/String;

    return-void

    :cond_df
    move-object v0, v1

    goto :goto_86

    :cond_e1
    move-object v0, v1

    goto :goto_95

    :cond_e3
    move-object v0, v1

    goto :goto_a0

    :cond_e5
    move-object v0, v1

    goto :goto_c1
.end method
