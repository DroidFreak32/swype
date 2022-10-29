.class public final Lcom/google/android/gms/internal/zzjd;
.super Lcom/google/android/gms/ads/internal/reward/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzcfz:Ljava/lang/String;

.field private final zzche:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjd;->zzcfz:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzjd;->zzche:I

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzjd;->zzche:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzcfz:Ljava/lang/String;

    return-object v0
.end method
