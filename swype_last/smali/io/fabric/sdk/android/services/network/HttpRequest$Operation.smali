.class public abstract Lio/fabric/sdk/android/services/network/HttpRequest$Operation;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 606
    .local p0, "this":Lio/fabric/sdk/android/services/network/HttpRequest$Operation;, "Lio/fabric/sdk/android/services/network/HttpRequest$Operation<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lio/fabric/sdk/android/services/network/HttpRequest$Operation;, "Lio/fabric/sdk/android/services/network/HttpRequest$Operation<TV;>;"
    const/4 v1, 0x0

    .line 627
    .local v1, "thrown":Z
    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$Operation;->run()Ljava/lang/Object;
    :try_end_4
    .catch Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_18
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    move-result-object v2

    .line 636
    :try_start_5
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$Operation;->done()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 640
    return-object v2

    .line 637
    :catch_9
    move-exception v0

    .line 639
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 628
    .end local v0    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v0

    .line 629
    .local v0, "e":Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
    const/4 v1, 0x1

    .line 630
    :try_start_12
    throw v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    .line 635
    .end local v0    # "e":Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
    :catchall_13
    move-exception v2

    .line 636
    :try_start_14
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$Operation;->done()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_20

    .line 640
    :cond_17
    throw v2

    .line 631
    :catch_18
    move-exception v0

    .line 632
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 633
    :try_start_1a
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_13

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 638
    .restart local v0    # "e":Ljava/io/IOException;
    if-nez v1, :cond_17

    .line 639
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
