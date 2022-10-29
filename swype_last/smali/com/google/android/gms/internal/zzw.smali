.class public final Lcom/google/android/gms/internal/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzw$zza;
    }
.end annotation


# instance fields
.field protected final zzcd:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzw;->zzcd:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private static zza(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/google/android/gms/internal/zzk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->zzp()[B

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_e
    return-void
.end method

.method private static zza(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzk;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget v0, p1, Lcom/google/android/gms/internal/zzk;->zzad:I

    .line 1000
    packed-switch v0, :pswitch_data_9e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown request method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 8000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 0
    :goto_15
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->zzs()I

    move-result v2

    const/16 v3, 0x1388

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzcd:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 1000
    :pswitch_36
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 9000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :pswitch_3e
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    .line 10000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :pswitch_46
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    .line 11000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Type"

    invoke-static {}, Lcom/google/android/gms/internal/zzk;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/google/android/gms/internal/zzk;)V

    goto :goto_15

    :pswitch_5b
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    .line 12000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Type"

    invoke-static {}, Lcom/google/android/gms/internal/zzk;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/google/android/gms/internal/zzk;)V

    goto :goto_15

    :pswitch_70
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    .line 13000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :pswitch_78
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    .line 14000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :pswitch_80
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    .line 15000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :pswitch_88
    new-instance v0, Lcom/google/android/gms/internal/zzw$zza;

    .line 16000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzw$zza;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Type"

    invoke-static {}, Lcom/google/android/gms/internal/zzk;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzw$zza;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/google/android/gms/internal/zzk;)V

    goto/16 :goto_15

    :pswitch_data_9e
    .packed-switch -0x1
        :pswitch_e
        :pswitch_36
        :pswitch_46
        :pswitch_5b
        :pswitch_3e
        :pswitch_70
        :pswitch_78
        :pswitch_80
        :pswitch_88
    .end packed-switch
.end method
