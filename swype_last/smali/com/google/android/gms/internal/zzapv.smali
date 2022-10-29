.class public abstract Lcom/google/android/gms/internal/zzapv;
.super Ljava/lang/Object;


# instance fields
.field protected volatile bjG:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    return-void
.end method

.method public static zzb$16844d7a(Lcom/google/android/gms/internal/zzapv;[BI)Lcom/google/android/gms/internal/zzapv;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzapv;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapu;
        }
    .end annotation

    .prologue
    .line 0
    .line 4000
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzapn;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzapn;-><init>([BI)V

    .line 0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapv;->zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzafo(I)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/zzapu; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_f

    return-object p0

    :catch_d
    move-exception v0

    throw v0

    :catch_f
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/zzapv;)[B
    .registers 4

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->aM()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    .line 1000
    :try_start_7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzc$715daad5([BI)Lcom/google/android/gms/internal/zzapo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapo;)V

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzapo;->bjw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 2000
    if-eqz v1, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1f} :catch_1f

    .line 1000
    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 0
    :cond_29
    return-object v0
.end method


# virtual methods
.method public aB()Lcom/google/android/gms/internal/zzapv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapv;

    return-object v0
.end method

.method public final aL()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->aM()I

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    return v0
.end method

.method public final aM()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->zzx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->aB()Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzapw;->zzg(Lcom/google/android/gms/internal/zzapv;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected zzx()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
