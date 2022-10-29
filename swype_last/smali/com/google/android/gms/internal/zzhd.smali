.class public final Lcom/google/android/gms/internal/zzhd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhd$zza;
    }
.end annotation


# instance fields
.field private final zzbqx:Z

.field private final zzbqy:Z

.field private final zzbqz:Z

.field private final zzbra:Z

.field private final zzbrb:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzhd$zza;)V
    .registers 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhd$zza;->zzbqx:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhd;->zzbqx:Z

    .line 2000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhd$zza;->zzbqy:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhd;->zzbqy:Z

    .line 3000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhd$zza;->zzbqz:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhd;->zzbqz:Z

    .line 4000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhd$zza;->zzbra:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhd;->zzbra:Z

    .line 5000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzhd$zza;->zzbrb:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhd;->zzbrb:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzhd$zza;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhd;-><init>(Lcom/google/android/gms/internal/zzhd$zza;)V

    return-void
.end method


# virtual methods
.method public final toJson()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhd;->zzbqx:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhd;->zzbqy:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhd;->zzbqz:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhd;->zzbra:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhd;->zzbrb:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v0

    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    const-string/jumbo v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_32
.end method
