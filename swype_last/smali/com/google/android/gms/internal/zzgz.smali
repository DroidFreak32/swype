.class public final Lcom/google/android/gms/internal/zzgz;
.super Lcom/google/android/gms/internal/zzhf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final zzbeg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzbpy:Ljava/lang/String;

.field zzbpz:J

.field zzbqa:J

.field zzbqb:Ljava/lang/String;

.field zzbqc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 5
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
    const-string/jumbo v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzhf;-><init>(Lcom/google/android/gms/internal/zzlh;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzbeg:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgz;->mContext:Landroid/content/Context;

    .line 1000
    const-string/jumbo v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgz;->zzbq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbpy:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgz;->zzbq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbqb:Ljava/lang/String;

    const-string/jumbo v0, "start_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgz;->zzbr(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbpz:J

    const-string/jumbo v0, "end_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgz;->zzbr(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbqa:J

    const-string/jumbo v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgz;->zzbq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbqc:Ljava/lang/String;

    .line 0
    return-void
.end method

.method private zzbq(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbeg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, ""

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbeg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11
.end method

.method private zzbr(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzbeg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e

    move-wide v0, v2

    :goto_d
    return-wide v0

    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_13

    move-result-wide v0

    goto :goto_d

    :catch_13
    move-exception v0

    move-wide v0, v2

    goto :goto_d
.end method
