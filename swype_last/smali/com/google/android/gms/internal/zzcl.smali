.class public final Lcom/google/android/gms/internal/zzcl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzail:Ljava/lang/Object;

.field private final zzarv:I

.field private final zzarw:I

.field private final zzarx:I

.field private final zzary:Lcom/google/android/gms/internal/zzcq;

.field private zzarz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzasa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzasb:I

.field zzasc:I

.field zzasd:I

.field zzase:I

.field public zzasf:Ljava/lang/String;

.field public zzasg:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzarz:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasa:Ljava/util/ArrayList;

    iput v1, p0, Lcom/google/android/gms/internal/zzcl;->zzasb:I

    iput v1, p0, Lcom/google/android/gms/internal/zzcl;->zzasc:I

    iput v1, p0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasg:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/zzcl;->zzarv:I

    iput p2, p0, Lcom/google/android/gms/internal/zzcl;->zzarw:I

    iput p3, p0, Lcom/google/android/gms/internal/zzcl;->zzarx:I

    new-instance v0, Lcom/google/android/gms/internal/zzcq;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/zzcq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzary:Lcom/google/android/gms/internal/zzcq;

    return-void
.end method

.method private static zza$19d919ee(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
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

    const/16 v3, 0x64

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, ""

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v3, :cond_15

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcl;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzcl;

    .line 2000
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    .line 0
    if-eqz v2, :cond_6

    .line 3000
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    .line 4000
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 0
    .line 5000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    iget v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasc:I

    iget v1, p0, Lcom/google/android/gms/internal/zzcl;->zzase:I

    iget v2, p0, Lcom/google/android/gms/internal/zzcl;->zzasb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcl;->zzarz:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcl;->zza$19d919ee(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcl;->zzasa:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcl;->zza$19d919ee(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcl;->zzasg:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x85

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "ActivityContent fetchId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " score:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " total_length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n viewableText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n signture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n viewableSignture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzcl;->zzf(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    if-gez v0, :cond_10

    const-string/jumbo v0, "ActivityContent: negative number of WebViews."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcl;->zzhw()V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method final zzf(Ljava/lang/String;Z)V
    .registers 6

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzcl;->zzarx:I

    if-ge v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzarz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasb:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasb:I

    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasa:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    monitor-exit v1

    goto :goto_a

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v0
.end method

.method public final zzhq()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final zzhv()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final zzhw()V
    .registers 5

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasb:I

    iget v2, p0, Lcom/google/android/gms/internal/zzcl;->zzasc:I

    .line 1000
    iget v3, p0, Lcom/google/android/gms/internal/zzcl;->zzarv:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzcl;->zzarw:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 0
    iget v2, p0, Lcom/google/android/gms/internal/zzcl;->zzase:I

    if-le v0, v2, :cond_28

    iput v0, p0, Lcom/google/android/gms/internal/zzcl;->zzase:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzary:Lcom/google/android/gms/internal/zzcq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcl;->zzarz:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcq;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzary:Lcom/google/android/gms/internal/zzcq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcl;->zzasa:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcq;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzasg:Ljava/lang/String;

    :cond_28
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method
