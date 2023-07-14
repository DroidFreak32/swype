.class public final Lcom/google/android/gms/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzo;


# instance fields
.field private zzn:I

.field private zzo:I

.field private final zzp:I

.field private final zzq:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzd;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzq:F

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/zzd;->zzq:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    .line 1000
    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 0
    :goto_0
    if-nez v0, :cond_1

    throw p1

    .line 1000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_1
    return-void
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    return v0
.end method
