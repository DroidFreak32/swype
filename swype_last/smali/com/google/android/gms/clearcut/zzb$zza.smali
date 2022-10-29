.class public final Lcom/google/android/gms/clearcut/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private qb:Ljava/lang/String;

.field private qc:I

.field private qd:Ljava/lang/String;

.field private qe:Ljava/lang/String;

.field private qg:I

.field private final ql:Lcom/google/android/gms/clearcut/zzb$zzc;

.field private qm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private qq:Z

.field public final qr:Lcom/google/android/gms/internal/zzapz$zzd;

.field public qs:Z

.field public final synthetic qt:Lcom/google/android/gms/clearcut/zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BB)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BB)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qc:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qe:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/clearcut/zzb;->zze$4b6941f3()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qg:I

    iput-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qm:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qn:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qo:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qp:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qq:Z

    new-instance v0, Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapz$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qs:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qe:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapz$zzd;->bka:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapz$zzd;->bkb:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zza;->zzbk(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapz$zzd;->bks:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzapz$zzd;->bka:J

    .line 1000
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 0
    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapz$zzd;->bkm:J

    if-eqz p2, :cond_91

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzapz$zzd;->bkh:[B

    :cond_91
    iput-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->ql:Lcom/google/android/gms/clearcut/zzb$zzc;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BC)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[B)V

    return-void
.end method


# virtual methods
.method public final zzana()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .registers 12

    new-instance v10, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zzb;->zzl(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qc:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qe:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qt:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/zzb;->zzj(Lcom/google/android/gms/clearcut/zzb;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qg:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qr:Lcom/google/android/gms/internal/zzapz$zzd;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->ql:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-static {}, Lcom/google/android/gms/clearcut/zzb;->zze$97c022f()[I

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/clearcut/zzb;->zzf$1d3331e4()[Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/clearcut/zzb;->zze$97c022f()[I

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/clearcut/zzb;->zzg$26044621()[[B

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qq:Z

    move-object v1, v10

    move-object v2, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzapz$zzd;Lcom/google/android/gms/clearcut/zzb$zzc;[I[Ljava/lang/String;[I[[BZ)V

    return-object v10
.end method
