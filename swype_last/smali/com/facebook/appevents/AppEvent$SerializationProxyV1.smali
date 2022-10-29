.class Lcom/facebook/appevents/AppEvent$SerializationProxyV1;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "isImplicit"    # Z

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    .line 213
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->isImplicit:Z

    .line 214
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v0, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->isImplicit:Z

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V

    return-object v0
.end method
