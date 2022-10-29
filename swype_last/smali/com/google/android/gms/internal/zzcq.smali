.class public final Lcom/google/android/gms/internal/zzcq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcq$zza;
    }
.end annotation


# instance fields
.field private final zzata:I

.field private final zzatb:I

.field private final zzatc:I

.field private final zzatd:Lcom/google/android/gms/internal/zzcp;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcq;->zzatd:Lcom/google/android/gms/internal/zzcp;

    iput p1, p0, Lcom/google/android/gms/internal/zzcq;->zzatb:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/zzcq;->zzata:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzcq;->zzatc:I

    return-void
.end method

.method private zzab(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 0
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_e

    const-string/jumbo v0, ""

    :goto_d
    return-object v0

    .line 1000
    :cond_e
    new-instance v2, Lcom/google/android/gms/internal/zzcq$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcq$zza;-><init>()V

    .line 0
    new-instance v3, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/zzcq;->zzatb:I

    new-instance v4, Lcom/google/android/gms/internal/zzcq$1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzcq$1;-><init>(Lcom/google/android/gms/internal/zzcq;)V

    invoke-direct {v3, v0, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_20
    array-length v4, v1

    if-ge v0, v4, :cond_36

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcr;->zzad(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_33

    iget v5, p0, Lcom/google/android/gms/internal/zzcq;->zzatb:I

    iget v6, p0, Lcom/google/android/gms/internal/zzcq;->zzata:I

    invoke-static {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzct;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_36
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzct$zza;

    :try_start_46
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcq;->zzatd:Lcom/google/android/gms/internal/zzcp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzct$zza;->zzati:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcp;->zzaa(Ljava/lang/String;)[B

    move-result-object v0

    .line 2000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzcq$zza;->zzatg:Landroid/util/Base64OutputStream;

    invoke-virtual {v3, v0}, Landroid/util/Base64OutputStream;->write([B)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_53} :catch_54

    goto :goto_3a

    .line 0
    :catch_54
    move-exception v0

    const-string/jumbo v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcq$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcq;->zzab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
