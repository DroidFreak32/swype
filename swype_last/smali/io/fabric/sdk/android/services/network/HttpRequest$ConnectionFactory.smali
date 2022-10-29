.class public interface abstract Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionFactory"
.end annotation


# static fields
.field public static final DEFAULT:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 350
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory$1;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory$1;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->DEFAULT:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
