.class final Lcom/google/android/gms/internal/zzpb$zzd;
.super Lcom/google/android/gms/internal/zzpb$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpb$zzc",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final qS:Lcom/google/android/gms/clearcut/LogEventParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpb$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpb$zzd;->qS:Lcom/google/android/gms/clearcut/LogEventParcelable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzpb$zzd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzpb$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb$zzd;->qS:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzpb$zzd;->qS:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/LogEventParcelable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb$zzd;->qS:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "MethodImpl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzpc;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/zzpb$zzd$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzpb$zzd$1;-><init>(Lcom/google/android/gms/internal/zzpb$zzd;)V

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb$zzd;->qS:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpb;->zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c} :catch_18

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpb$zzd;->qS:Lcom/google/android/gms/clearcut/LogEventParcelable;

    .line 2000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpc;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/internal/zzpe;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    .line 1000
    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "ClearcutLoggerApiImpl"

    const-string/jumbo v2, "derived ClearcutLogger.MessageProducer "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string/jumbo v2, "MessageProducer"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpb$zzd;->zzz(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_17
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    .prologue
    .line 0
    return-object p1
.end method
