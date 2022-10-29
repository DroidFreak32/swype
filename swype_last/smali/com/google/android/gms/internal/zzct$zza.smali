.class public final Lcom/google/android/gms/internal/zzct$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field final value:J

.field final zzati:Ljava/lang/String;

.field final zzatj:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzct$zza;->zzati:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzct$zza;->zzatj:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/google/android/gms/internal/zzct$zza;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzct$zza;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    check-cast p1, Lcom/google/android/gms/internal/zzct$zza;

    iget v0, p1, Lcom/google/android/gms/internal/zzct$zza;->zzatj:I

    iget v2, p0, Lcom/google/android/gms/internal/zzct$zza;->zzatj:I

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_8

    :cond_1e
    move v0, v1

    goto :goto_8
.end method

.method public final hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    long-to-int v0, v0

    return v0
.end method
