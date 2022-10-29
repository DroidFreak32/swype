.class public Lcom/google/android/gms/internal/zzab;
.super Lcom/google/android/gms/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzk",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcg:Lcom/google/android/gms/internal/zzm$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzm$zza;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p4}, Lcom/google/android/gms/internal/zzk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzab;->zzcg:Lcom/google/android/gms/internal/zzm$zzb;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzi;",
            ")",
            "Lcom/google/android/gms/internal/zzm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzi;->data:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzi;->zzz:Ljava/util/Map;

    .line 1000
    const-string/jumbo v3, "ISO-8859-1"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzx;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 0
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_19

    :goto_10
    invoke-static {p1}, Lcom/google/android/gms/internal/zzx;->zzb(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzm;

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzi;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_10
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 0
    check-cast p1, Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzab;->zzcg:Lcom/google/android/gms/internal/zzm$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzm$zzb;->zzb(Ljava/lang/Object;)V

    .line 0
    return-void
.end method
